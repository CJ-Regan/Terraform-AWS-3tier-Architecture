#create Ec2 security group 

resource "aws_security_group" "ec2-sg" {
  name        = "ec2sg"
  description = "Allows ALB to access the EC2 instances"
  vpc_id      = aws_vpc.prod-vpc.id

  ingress {
    description      = "TLS from ALB"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    security_groups  = [aws_security_group.alb-sg.id] 
  }

    ingress {
    description      = "TLS from ALB"
    from_port        = 8443
    to_port          = 8443
    protocol         = "tcp"
    security_groups  = [aws_security_group.alb-sg.id]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPCEC2SG"
  }
}
