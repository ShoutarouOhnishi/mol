#!/bin/bash

# Terraformのルートディレクトリに移動
cd "$(dirname "$0")/.."

# 現在のワークスペース名を取得
WORKSPACE=$(terraform workspace show)

# ワークスペース名に基づいて適切な .tfvars ファイルを選択
case $WORKSPACE in
  "dev")
    VAR_FILE="dev.tfvars"
    ;;
  "stg")
    VAR_FILE="stg.tfvars"
    ;;
  "prd")
    VAR_FILE="prd.tfvars"
    ;;
  *)
    echo "Unknown workspace: $WORKSPACE"
    exit 1
    ;;
esac

terraform apply -var-file="$VAR_FILE" -auto-approve