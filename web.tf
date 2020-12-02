data "template_file" "userdata" {
template = file("./init.tpl")
}


resource "aws_security_group" "web-sg" {
  name   = "web-security-group"
  vpc_id = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = [aws_vpc.main.cidr_block]
  }
}


resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.keyname
  user_data = data.template_file.userdata.rendered
  vpc_security_group_ids      = [ aws_security_group.web-sg.id ]
  subnet_id                   = aws_subnet.main_public.0.id
  associate_public_ip_address = true

  tags   = local.tags

}

resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  vpc      = true
}
