variable "key_pair" {
  default = "aws-key"
}

resource "aws_instance" "ubuntu-ssh-server" {
    ami = "ami-067c32f3d5b9ace91"
    instance_type = "t2.micro"
    subnet_id = "${module.aws-network-configs.kube-subnet-c-id}"
    vpc_security_group_ids = [
        "${module.aws-network-configs.kube-sg-id}"
    ]
    key_name = "${var.key_pair}"
    count = 1
    tags {
        Name = "test-instance"
    }
    associate_public_ip_address = true
}
