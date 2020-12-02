

resource "aws_security_group" "app-sg" {
  name   = "app-security-group"
  vpc_id = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = [aws_vpc.main.cidr_block]
  }
  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = [aws_vpc.main.cidr_block]
  }
  # 
  # egress {
  #   protocol    = -1
  #   from_port   = 0
  #   to_port     = 0
  #   cidr_blocks = [aws_vpc.main.cidr_block]
  # }
}

resource "aws_instance" "app" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.keyname
  user_data = data.template_file.userdata.rendered
  vpc_security_group_ids      = [ aws_security_group.app-sg.id ]
  subnet_id                   = aws_subnet.main_private.0.id

  tags   = local.tags

}
