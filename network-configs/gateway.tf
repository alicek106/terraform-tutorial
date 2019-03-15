resource "aws_internet_gateway" "kube-gateway" {
  vpc_id = "${aws_vpc.kube-vpc.id}"
tags {
    Name = "kube-gateway"
  }
}
