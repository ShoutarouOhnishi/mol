#!/bin/bash

# tfstate ファイルのパス
tfstate_file=$1
shift
commands=("$@")

# jq で必要な値を取得
CLUSTER_NAME=$(jq -r '.resources[] | select(.type == "aws_ecs_cluster") | .instances[0].attributes.name' $tfstate_file)
SERVICE_NAME=$(jq -r '.resources[] | select(.type == "aws_ecs_service") | .instances[0].attributes.name' $tfstate_file)
CONTAINER_NAME=$(jq -r '.resources[] | select(.type == "aws_ecs_task_definition") | .instances[0].attributes.container_definitions' $tfstate_file | jq -r '.[0].name')
REGION="ap-northeast-1"

# 値の検証
if [ -z "$CLUSTER_NAME" ] || [ -z "$SERVICE_NAME" ]; then
  echo "Error: CLUSTER_NAME or SERVICE_NAME not found in tfstate file"
  exit 1
fi

TASK_IDS=$(aws ecs list-tasks --cluster $CLUSTER_NAME --service-name $SERVICE_NAME --query 'taskArns' --output text --region $REGION)

for TASK_ID in $TASK_IDS; do
  for command in "${commands[@]}"; do
    # ECS タスク内のコンテナにコマンドを実行
    execute_command=("aws" "ecs" "execute-command" "--region" "$REGION" "--cluster" "$CLUSTER_NAME" "--task" "$TASK_ID" "--container" "$CONTAINER_NAME" "--command" "$command" "--interactive")
    echo "Executing command: ${execute_command[*]}"
    $("${execute_command[@]}")
  done
done
