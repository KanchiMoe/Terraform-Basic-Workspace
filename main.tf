provider "aws" {
    region = "eu-west-2"

    access_key = var.AWS_access_key
    secret_key = var.AWS_secret_key

    token      =  var.AWS_token
}

resource "aws_s3_bucket" "b" {
    bucket = "my-bucket-${var.Which_workspace_am_I_in}"

    tags = {
        workspace = var.Which_workspace_am_I_in
    }
}

variable "Which_workspace_am_I_in" {
    type     = string
    nullable = false
}
