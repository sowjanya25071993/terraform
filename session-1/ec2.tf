resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow all ports"
    from_port        = var.inbound_from_port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}