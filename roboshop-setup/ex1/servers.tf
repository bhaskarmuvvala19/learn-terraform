resource "aws_instance" "frontend" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "frontend-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongodb" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "mongodb-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "catalogue" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "catalogue-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "mysql" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "mysql-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "redis" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "redis-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "shipping" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "shipping-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "payment" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "payment-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "rabbitmq-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "user" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "user-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "cart" {
  ami= "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
  tags = {
    Name="cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z0150168L6K51XOF8ZF7"
  name    = "cart-dev.devopswithbhaskar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
