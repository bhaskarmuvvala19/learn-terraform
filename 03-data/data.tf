data "aws_ami" "amii" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["084055491950"]


}
output "ami_id" {
  value = data.aws_ami.amii.image_id
}