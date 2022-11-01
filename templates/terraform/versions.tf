terraform {
  required_providers {
    google  = {
      source  = "hashicorp/google"
      version = "~> 4.42.0"
    }
    aws     = {
      source  = "hashicorp/aws"
      version = "~> 4.37.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.29.1"
    }
  }

  required_version = ">= 1.3.0"
}