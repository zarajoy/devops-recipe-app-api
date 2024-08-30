variable "prefix" {
  default = "devops-zj"
}

variable "project" {
  default = "devops-recipe-api-app"
}

variable "contact" {
  default = "zarajoy@outlook.com"
}

variable "db_username" {
  default = "recipeapp"
}

variable "db_password" {
  description = "Password for database"
}

variable "ecr_proxy_image" {
  description = "Path to the ECR repo with the proxy image"
}

variable "ecr_app_image" {
  description = "Path to the ECR repo with the API image"
}

variable "django_secret_key" {
  description = "Secret key for Django"
}
