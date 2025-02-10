locals {
  region = "ca-central-1"
}

terraform {
  source = "."
}

inputs = {
  region = local.region
}

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    encrypt             = true
    bucket              = "status-statut-tf"
    use_lockfile        = true
    region              = local.region
    key                 = "./terraform.tfstate"
  }
}
