
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
  default     = "mol"
}

variable "db_name" {
  description = "The Database name."
  type        = string
  default     = "mol_backend"
}

variable "certificate_domain" {
  description = "The Domain name for the certificate."
  type        = string
  default     = "mol.ninja"
}

variable "hosted_domain" {
  description = "The Domain name"
  type        = string
  default     = "mol.ninja"
}

variable "domain" {
  description = "The Domain name"
  type        = string
  default     = "mol.ninja"
}



