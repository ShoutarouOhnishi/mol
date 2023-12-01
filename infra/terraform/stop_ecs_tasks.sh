#!/bin/bash

# クラスター名を引数から取得
cluster_name=$1

# クラスターの全てのタスクIDを取得
task_ids=$(aws ecs list-tasks --cluster $cluster_name --query 'taskArns[*]' --output text)

# 各タスクを停止
for task_id in $task_ids
do
    aws ecs stop-task --cluster $cluster_name --task $task_id
done