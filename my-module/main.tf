data "aws_ami" "Amazon_Linux_latest" {
#Get the latest amazon-linux2 official image as AMI.
most_recent = true
owners = ["amazon"]
filter {
name = "owner-alias"
values = ["amazon"]
}
filter {
name = "name"
values = ["amzn2-ami-hvm-*"]
}
filter {
name = "virtualization-type"
values = ["hvm"]
}
filter {
name = "architecture"
values = ["x86_64"]
}
}
resource "aws_instance" "example" {
ami = data.aws_ami.Amazon_Linux_latest.id
instance_type = var.instance_type

tags = {
Name = var.instance_name
 }
}