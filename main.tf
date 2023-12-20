module "my_module" {
source = "./my-module"
}
provider "aws" {
region = "us-west-1"
}

#resource "aws_instance" "example" {
#ami = data.aws_ami.Amazon_Linux_latest.id
#instance_type = "t2.micro"

#tags = {
#Name = var.instance_name
# }
#}