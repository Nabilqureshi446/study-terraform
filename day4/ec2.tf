provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web_server" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
    tags = {
        Name = "test"
        env = "dev"

    }
}
 

variable "image_id" {
    default = "ami-0b6c6ebed2801a5cb"
  
}

variable "instance_type" {
    default = "t3.small"
  
}
variable "key_pair" {
    default = "3tier"
}