terraform {
  required_version = "~> 1.2.0"

/*   backend "remote" {
    hostname     = "app.terraform.io"
    organization = "binbase"

    workspaces {
      name = "humble-global"
    }
  } */

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.15.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.11.0"
    }

    http = {
      source = "hashicorp/http"
      version = "~> 2.1.0"
    }
  }
}
