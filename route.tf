resource "aws_route_table" "main_private" {
  count  = length(var.availability_zones)
  vpc_id = aws_vpc.main.id
  tags   = local.tags
}

resource "aws_route_table" "main_public" {
  vpc_id = aws_vpc.main.id
  tags   = local.tags
}

resource "aws_route_table_association" "main_private" {
  count          = length(var.availability_zones)
  subnet_id      = element(aws_subnet.main_private.*.id,count.index)
  route_table_id = element(aws_route_table.main_private.*.id,count.index)
}

resource "aws_route_table_association" "main_public" {
  count          = length(var.availability_zones)
  subnet_id      = element(aws_subnet.main_public.*.id,count.index)
  route_table_id = aws_route_table.main_public.id
}

resource "aws_route" "public_igw_gateway_route" {
  route_table_id         = aws_route_table.main_public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route" "private_nat_gateway_route" {
  count = length(var.availability_zones)
  route_table_id = element(aws_route_table.main_private.*.id, count.index)
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = element(aws_nat_gateway.main.*.id, count.index)
}

resource "aws_network_acl" "main_acl" {
  vpc_id = aws_vpc.main.id

  subnet_ids = concat(aws_subnet.main_public.*.id,aws_subnet.main_private.*.id)

  ingress {
    rule_no    = 100
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
  }

  egress {
    rule_no    = 100
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
  }

  tags = local.tags
}
