#  Create Internet Gateway 

resource "aws_internet_gateway" "web-app-gateway" {
  vpc_id = aws_vpc.prod-vpc.id

  tags = {
    Name = "Web App Gateway"
  }
}
