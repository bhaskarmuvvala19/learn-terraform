data "aws_ami" "amii" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["084055491950"]
}


resource "aws_instance" "frontend" {
  count                  = 5
  ami                    = data.aws_ami.amii.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0ca9150f91b0e8e5d"]
}