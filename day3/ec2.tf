provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "my-website" {
    ami = "var.image_id"
    instance_type = "var.instance_type"
    key_name = "var.key_name" 
    vpc_security_group_ids = ["sg-02a1d14dea6c37136"]
    tags = {
        Name = "my-website"
        env = "dev"

}    
}

