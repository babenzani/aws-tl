resource "aws_instance" "web1" {
    ami = var.AMI
    instance_type = "t2.micro"
  
    # VPC
    subnet_id = aws_subnet.prod-subnet-public-1.id
  
    # Security Group
    vpc_security_group_ids = [aws_security_group.ssh-allowed.id]

    # the Public SSH key
    key_name = aws_key_pair.mykey.key_name
  
    # nginx installation
    provisioner "file" {
        source = "nginx.sh"
        destination = "/tmp/nginx.sh"
    }

    provisioner "remote-exec" {
        inline = [
             "chmod +x /tmp/nginx.sh",
             "sudo /tmp/nginx.sh"
        ]
    }

    connection {
        type = "ssh"
        agent = false
        user = var.EC2_USER
        host = self.public_ip
        private_key = file(var.PRIVATE_KEY_PATH)
    }
}

# Sends your public key to the instance
resource "aws_key_pair" "mykey" {
    key_name = "my_pub"
    public_key = file(var.PUBLIC_KEY_PATH)
}

