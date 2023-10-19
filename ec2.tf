resource "aws_instance" "app_server" {
  ami           = "ami-008bcc0a51a849165"
  instance_type = "t3.micro"

  tags = {
    Name = "Demo Terraform"
  }
}