resource "aws_instance" "web" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer2.key_name
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  availability_zone = "us-east-1a"
  user_data = file("userdata.sh")  
  tags = {
      "Name" = "Aziz"
  }
}
