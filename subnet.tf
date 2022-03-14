# Create 1st web subnet 
resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = var.subnet_prefix[0].cidr_block
  map_public_ip_on_launch = true
  availability_zone = "eu-west-2a"

  tags = {
    Name = var.subnet_prefix[0].name
  }
}

# Create 2nd web subnet 
resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = var.subnet_prefix[1].cidr_block
  map_public_ip_on_launch = true
  availability_zone = "eu-west-2b"

  tags = {
    Name = var.subnet_prefix[1].name
  }
}

#  Creating 1st application subnet 
resource "aws_subnet" "application-subnet-1" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = var.subnet_prefix[2].cidr_block
  map_public_ip_on_launch = false
  availability_zone = "eu-west-2a"

  tags = {
    Name = var.subnet_prefix[2].name
  }
}
#  Creating 2nd application subnet 
resource "aws_subnet" "application-subnet-2" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = var.subnet_prefix[3].cidr_block
  map_public_ip_on_launch = false
  availability_zone = "eu-west-2b"

  tags = {
    Name = var.subnet_prefix[3].name
  }
}
#  Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = var.subnet_prefix[4].cidr_block
  availability_zone = "eu-west-2a"

  tags = {
    Name = var.subnet_prefix[4].name
  }
}

#  Database Private Subnet
resource "aws_subnet" "database-subnet2" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = var.subnet_prefix[5].cidr_block
  availability_zone = "eu-west-2b"

  tags = {
    Name = var.subnet_prefix[5].name
  }
}
