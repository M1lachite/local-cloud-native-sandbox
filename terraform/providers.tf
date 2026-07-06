provider "aws" {  
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"
  endpoints {
    eks = var.destination
    ec2 = var.destination
    iam = var.destination
    sts = var.destination
    ecr = var.destination
    s3 = var.destination
    dynamodb = var.destination
    rds = var.destination
    sqs = var.destination
    sns = var.destination
  }
}