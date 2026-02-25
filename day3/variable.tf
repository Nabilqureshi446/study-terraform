variable "image_id" {
    default = "ami-0c55b159cbfafe1f0"

}

variable "instance_type"{
    default = "t3.small"

}

variable "key_name" {
    default = "3tier"
  
}

variable "vpc_security_group_ids" {
    default = [sg-02a1d14dea6c37136]
  
}