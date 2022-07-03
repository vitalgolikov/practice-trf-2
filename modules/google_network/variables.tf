variable "project_id" {
  type = string
//  default = "fresh-span-354807"
  description = "project ID"

}

variable "vpc_name" {
  type = string
//  default = "vpc-rod"
  description = "vpc name"
}

variable "auto_mode" {
  type = bool
  default = false
  description = "Parametr assignet create automatic or manual"
}


variable "subnet_name" {
  type = string
  default = "lake-subnet"
  description = "Subnet name"

}

variable "cidr" {
  type = string
//  default = "192.168.45.0/24"
  description = "CIDR (network randge)"
}

variable "region" {
  type = string
//  default = "us-central"
  description = "Region for subnet"

}

variable "router_gw_name" {
  type = string
  default = "gw-local"
  description = "Router gateway name"

}

variable "router_nat_name" {
  type = string
  default = "nat-local"
  description = "Router NAT name"

}

//variable "zone" {
//  type = string
//  default = "us-central1-a"
//  description = "zone for subnet"
//}