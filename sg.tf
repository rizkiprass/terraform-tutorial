resource "aws_security_group" "test_sg" {
  name        = "test_sg"
  description = "test_sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.16.250.0/30", "172.16.251.8/30"]
    description = "ssh"
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["172.16.250.0/30", "172.16.251.8/30"]
    description = "icmp"

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    ignore_changes = [
    ingress]
  }
}