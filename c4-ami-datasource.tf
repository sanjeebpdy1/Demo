# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "windowsami" {
  most_recent      = true
  owners           = ["amazon"]
  filter {
    name   = "name"
    values = ["Microsoft-windows--server-2019-hvm-*-gp2"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}