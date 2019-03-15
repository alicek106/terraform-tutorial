output "kube-subnet-c-id" {
  value = "${aws_subnet.kube-subnet-c.id}"
}

output "kube-sg-id" {
  value = "${aws_security_group.kube-sg.id}"
}
