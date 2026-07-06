resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "eks_subnet_1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "eks-subnet-1"
  }
}

resource "aws_subnet" "eks_subnet_2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "eks-subnet-2"
  }
}