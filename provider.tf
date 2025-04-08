terraform {
    required_providers {
        google = {
        source  = "hashicorp/google"
        version =  "~> 5.4.0"
        }
    }  
    required_version = ">= 0.13"
}

provider "google" {
    credentials = file("terraform-key.json")
    region      = var.region
    project     = var.project_id
}
