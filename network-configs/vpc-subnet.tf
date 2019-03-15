resource "aws_vpc" "kube-vpc" {
  cidr_block = "10.0.0.0/16"
  tags {
    Name = "kube-vpc"
  }
}

resource "aws_subnet" "kube-subnet-c" {
  vpc_id = "${aws_vpc.kube-vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
}
