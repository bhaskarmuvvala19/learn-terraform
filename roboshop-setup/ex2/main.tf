#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["084055491950"]
#}
#
#
#resource "aws_instance" "frontend" {
#  count                  = 5
#  ami                    = data.aws_ami.ami.image_id
#  instance_type          = "t3.micro"
#  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
#}
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = data.aws_ami.ami.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
}

variable "instances" {
  default = ["cart", "catalogue", "user", "payment", "shipping"]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}
