resource "aws_instance" "instance1" {
    ami = "lookup(var.AMI, var.AWS_REGION)"
    instance_type = "t2.micro"
  
    # VPC
    subnet_id = aws_subnet.prod-subnet-public-1.id
  
    # Security Group
    vpc_security_group_ids = ["aws_security_group.ssh-allowed.id"]
    
    # the Public SSH key
    key_name = aws_key_pair.london-region-key-pair.id

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
        user = "var.EC2_USER"
        #private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
        private_key = var.PRIVATE_KEY_PATH
	host = "self.public_ip"
    }
}

resource "aws_key_pair" "london-region-key-pair" {
    key_name = "london-region-key-pair"
    public_key = "var.PUBLIC_KEY_PATH)"
}
