provider "aws" {
    region = "us-east-1"

}
resource "aws_instance" "web" {
    ami = "ami-0c94855ba95c71c99"
    instance_type = "t3.small"
    key_name = "3tier"
    vpc_security_group_ids = ["sg-02a1d14dea6c37136"]
    tags = {
        Name = "web"
        env = "dev"
    }
}
 
