# Associating Route Table for pub subnet 1

resource "aws_route_table_association" "pub-route1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}

# Associating Route Table for pub subnet 2

resource "aws_route_table_association" "pub-route2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-route-table.id
}

#Associating Route Table for private subnet 1

resource "aws_route_table_association" "private-route1" {
  subnet_id      = aws_subnet.application-subnet-1.id
  route_table_id = aws_route_table.private1.id
}

#Associating Route Table for private subnet 2

resource "aws_route_table_association" "private-route2" {
  subnet_id      = aws_subnet.application-subnet-2.id
  route_table_id = aws_route_table.private2.id
}

#Associating Route Table for private Database subnet 1

resource "aws_route_table_association" "private-route3" {
  subnet_id      = aws_subnet.database-subnet-1.id
  route_table_id = aws_route_table.private3.id
}

#Associating Route Table for private Database subnet 2

resource "aws_route_table_association" "private-route4" {
  subnet_id      = aws_subnet.database-subnet2.id
  route_table_id = aws_route_table.private4.id
}
