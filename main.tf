terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "6.11.0"
        }
    }
}
provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "mybucket" {
    bucket = "my-unique-bucket-name-123456"
    acl    = "private"
}