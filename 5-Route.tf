resource "aws_route_table" "private" {
  vpc_id = aws_vpc.Might-GuyVPC.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.Might-GuyVPC.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.MG-igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "Might-Guy-Prod-Private-1a" {
  subnet_id      = aws_subnet.Might-Guy-Prod-Private-1a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "Might-Guy-Dev-1d" {
  subnet_id      = aws_subnet.Might-Guy-Dev-1d.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "Might-Guy-Test-1f" {
  subnet_id      = aws_subnet.Might-Guy-Test-1f.id
  route_table_id = aws_route_table.private.id
}


#public

resource "aws_route_table_association" "Might-Guy-Prod-Public-1a" {
  subnet_id      = aws_subnet.Might-Guy-Prod-Public-1a.id
  route_table_id = aws_route_table.public.id
}
/*
resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-east-1c" {
  subnet_id      = aws_subnet.public-us-east-1c.id
  route_table_id = aws_route_table.public.id
}
*/