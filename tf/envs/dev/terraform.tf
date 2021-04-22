# This sets up Terraform to use remote state and state file locking
# These are safeguards to ensure we're not overwriting each other's commits
# and trying to push multiple changes at the same time. Read more about it here:
# https://www.terraform.io/docs/state/remote.html

terraform {
  backend "s3" {
    region               = "us-east-1"                                # region of the bucket
    bucket               = "jaketest-dev-terraform-state-storage"        # state file bucket name
    key                  = "2021/terraform.tfstate" # state file key name
    workspace_key_prefix = "jake"                   # prefix for using workspaces
    dynamodb_table       = "jaketest-dev-terraform-state-lock"         # name of dynamodb lock table
  }
}
