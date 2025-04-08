variable "project_id" {
    type = string
    description = "The ID of the project where the resources will be created."  
}

variable "tf_service_account" {
    type = string
    description = "The name of the service account to be created."  
}

variable "region" {
    type = string
    description = "The region where the resources will be created."  
  
}