provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_vpc" "pvc-1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.pvc-1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}


