resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags              = local.tags
}


resource "aws_subnet" "main_public" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, 3, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags              = local.tags
}

resource "aws_subnet" "main_private" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, 3, count.index + length(aws_subnet.main_public.*.id))
  availability_zone = element(var.availability_zones, count.index)
  tags              = local.tags
}
