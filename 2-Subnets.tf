#These are   for  public

resource "aws_subnet" "Might-Guy-Prod-Public-1a" {
  vpc_id                  = aws_vpc.Might-GuyVPC.id
  cidr_block              = "10.61.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "Might-Guy-Prod-Public-1a"
    Service = "Internet"
    Owner   = "Lizzo"
    Location  = "EastCoast"
  }
}
/*
resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.Might-GuyVPC.id
  cidr_block              = "10.61.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.Might-GuyVPC.id
  cidr_block              = "10.61.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
*/
#these are for private
resource "aws_subnet" "Might-Guy-Prod-Private-1a" {
  vpc_id            = aws_vpc.Might-GuyVPC.id
  cidr_block        = "10.61.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "Might-Guy-Prod-Private-1a"
    Service = "Local"
    Owner   = "Lizzo"
    Location  = "EastCoast"
  }
}

resource "aws_subnet" "Might-Guy-Dev-1d" {
  vpc_id            = aws_vpc.Might-GuyVPC.id
  cidr_block        = "10.61.14.0/24"
  availability_zone = "us-east-1d"

  tags = {
    Name    = "Might-Guy-Dev-1d"
    Service = "local"
    Owner   = "Lizzo"
    Location  = "EastCoast"
  }
}


resource "aws_subnet" "Might-Guy-Test-1f" {
  vpc_id            = aws_vpc.Might-GuyVPC.id
  cidr_block        = "10.61.16.0/24"
  availability_zone = "us-east-1f"

  tags = {
    Name    = "Might-Guy-Test-1f"
    Service = "Local"
    Owner   = "Lizzo"
    Location  = "EastCoast"
  }
}
