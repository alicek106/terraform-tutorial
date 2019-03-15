resource "aws_route_table" "kube-route-table" {
  vpc_id = "${aws_vpc.kube-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.kube-gateway.id}"
  }
  tags {
    Name = "kube-route-table"
  }
}
resource "aws_route_table_association" "my-subnet-association" {
  subnet_id      = "${aws_subnet.kube-subnet-c.id}"
  route_table_id = "${aws_route_table.kube-route-table.id}"
}
