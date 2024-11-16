resource "aws_internet_gateway" "MG-igw" {
  vpc_id = aws_vpc.Might-GuyVPC.id

  tags = {
    Name    = "Might-GuyVPC"
    Service = "Gateway"
    Owner   = "Me"
    Planet  = "Mars"
  }
}
