variable "AWS-REGION" {    
    default = "ap-southeast-1"
}

variable "AMI" {
   default  = "ami-0e2e44c03b85f58b3"
}

variable "PRIVATE_KEY_PATH" {
  default = "london-region-key-pair"
}

variable "PUBLIC_KEY_PATH" {
  default = "london-region-key-pair.pub"
}

variable "EC2_USER" {
  default = "ubuntu"
}
