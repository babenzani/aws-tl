resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-southeast-1a"
    tags = {
        Name = "prod-subnet-public-1"
    }
}

######
# subnet 2
######
