resource "aws_instance" "my_ec2_instance" {
  ami = "ami-08d4199137b6ef13d"
  instance_type = "t3.micro"
  user_data = file("${path.module}/install_app.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
#com