variable "AWS_REGION" {    
    default = "ap-southeast-1"
}

variable "AMI" {
    type = "map"
    
    default {
        ap-southeast-1 = "ami-0e2e44c03b85f58b3"
        us-east-1 = "ami-0c2a1acae6667e438"
    }
}
