
variable "region" {
  description = "The AWS region."
  type        = string
  default     = "ap-northeast-1"
}

variable "account_id" {
  description = "The AWS account ID."
  type        = string
  default     = "785460806234"
}

variable "secret_name" {
  description = "The AWS Secrets Manager secret name."
  type        = string
  default     = "secrets"
}

variable "app_name" {
  description = "The App name."
  type        = string
  default     = "online-battle"
}

variable "db_name" {
  description = "The Database name."
  type        = string
  default     = "online_battle_backend"
}



