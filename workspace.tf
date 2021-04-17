provider "aws" {

region = "us-east-1"

}


resource "aws_instance" "durga"{

  instance_type = lookup(var.instance_type,terraform.workspace)
  ami = "ami-047a51fa27710816e"


}


variable instance_type{
type = map

default = {

default = "t2.micro"
dev = "t2.medium"
prd = "t2.large"

}

}
