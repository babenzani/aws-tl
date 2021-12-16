variable "AWS_REGION" {    
    default = "ap-southeast-1"
}

variable "AMI" {
   default  = "ami-056251cdd6fd1c8eb"
}

variable "EC2_USER" {
   default = "centos"
}

variable "PRIVATE_KEY_PATH" {
   description = "SSH public key to use for the connection."
   type        = string
   sensitive   = true
   default = "~/.ssh/id_rsa"
}

variable "PUBLIC_KEY_PATH" {
   description = "SSH private key to use for the connection."
   type        = string
   sensitive   = true
   default = "~/.ssh/id_rsa.pub"
}

