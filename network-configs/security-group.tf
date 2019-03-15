resource "aws_security_group" "kube-sg" {
  vpc_id      = "${aws_vpc.kube-vpc.id}"
  name        = "kube-sg"
  description = "This security group is for kubernetes"
  tags { Name = "kube-sg" }
}
