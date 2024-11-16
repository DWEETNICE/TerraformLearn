# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "Might-GuyVPC" {
  cidr_block = "10.61.0.0/16"

  tags = {
    Name = "MG-VPC"
    Service = "Internet"
    Owner = "MasteryStudyGroup"
    Location = "East Coast"
  }
}
