# Variable for CIDR Block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

# Variable for Public Subnet CIDR
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

# Variable for Private Subnet CIDR
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

# Variable for Availability Zone
variable "availability_zone" {
  description = "Availability Zone for subnets"
  type        = string
}

# Variable for VPC Tags
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

# Variable for Public Subnet Tags
variable "public_subnet_name" {
  description = "Name of the public subnet"
  type        = string
}

# Variable for Private Subnet Tags
variable "private_subnet_name" {
  description = "Name of the private subnet"
  type        = string
}

# Variable for Internet Gateway Tags
variable "internet_gateway_name" {
  description = "Name of the internet gateway"
  type        = string
}

# Variable for Public Route Table Tags
variable "public_route_table_name" {
  description = "Name of the public route table"
  type        = string
}

# Variable for Private Route Table Tags
variable "private_route_table_name" {
  description = "Name of the private route table"
}

# Variable for NAT Gateway Tags
variable "nat_gateway_name" {
  description = "Name of the NAT gateway"
  type        = string
}