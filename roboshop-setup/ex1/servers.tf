resource "aws_instance" "frontend" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="frontend"
  }
}
resource "aws_instance" "mongodb" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="mongodb"
  }
}
resource "aws_instance" "catalogue" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="catalogue"
  }
}

resource "aws_instance" "mysql" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="mysql"
  }
}
resource "aws_instance" "redis" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="redis"
  }
}
resource "aws_instance" "shipping" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="shipping"
  }
}
resource "aws_instance" "payment" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="payment"
  }
}

resource "aws_instance" "rabbitmq" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="rabbitmq"
  }
}
resource "aws_instance" "user" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="user"
  }
}
resource "aws_instance" "cart" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="cart"
  }
}
