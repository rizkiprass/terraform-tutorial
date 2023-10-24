resource "aws_instance" "app_server" {
  ami                         = "ami-008bcc0a51a849165"
  instance_type               = "t3.micro"
  associate_public_ip_address = "true"
  vpc_security_group_ids      = [aws_security_group.test_sg.id]

  tags = {
    Name = "test-ec2-terraform"
  }
}