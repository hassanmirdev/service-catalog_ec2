resource "aws_vpc" "scvpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id            = aws_vpc.scvpc.id
  cidr_block        = var.public_subnets[count.index]
  map_public_ip_on_launch = true
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-public-${count.index}"
  }
}
