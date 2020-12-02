resource "aws_nat_gateway" "main" {
  count         = length(var.availability_zones)
  allocation_id = element(aws_eip.main.*.id, count.index)
  subnet_id     = element(aws_subnet.main_public.*.id, count.index)
  tags          = local.tags
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags   = local.tags
}


resource "aws_eip" "main" {
  count      = length(var.availability_zones)
  vpc        = true
  depends_on = [aws_internet_gateway.main]
  tags       = local.tags
}
