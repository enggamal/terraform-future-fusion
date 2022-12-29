resource "aws_vpc" "main" {
  cidr_block =  var.ip_cidr_subnet
}


resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "Main"
  }
}


resource "aws_instance" "first" {
  subnet_id   = aws_subnet.my_subnet.id
  ami           = "ami-0cc814d99c59f3789" 
  instance_type = "t2.micro"


  tags = {
    Name = "soo"
  }


}