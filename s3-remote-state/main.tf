terraform {
    backend "s3" {}
}

provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "terra1234cotta1234"
    versioning {
        enabled = true
    }
    lifecycle {
        prevent_destroy = true
    }
}

output "s3_bucket_arm" {
  value = "${aws_s3_bucket.terraform_state.arn}"
}
