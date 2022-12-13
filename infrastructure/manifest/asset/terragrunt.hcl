generate "backend" {
  path      = "_backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "a208193-federated-search-tf-state-dev-use1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "a208193-federated-search-tf-state-dev-use1"
  }
}
EOF
}
