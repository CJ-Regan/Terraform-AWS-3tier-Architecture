resource "aws_nat_gateway" "gw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public-subnet-1.id
  depends_on = [aws_internet_gateway.web-app-gateway]
}

resource "aws_nat_gateway" "gw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public-subnet-2.id
  depends_on = [aws_internet_gateway.web-app-gateway]
}
