variable "name" {
  type = string
  description = "Computer engine instance name"
}

variable "machine_type" {
  type = string
//  default = "f1-micro"
  description = "machine type"

}

variable "zone" {
  type = string
  description = "machine zone"

}

variable "image" {
  type = string
//  default = "debian-cloud/debian-9"
  description = "Installed image OS"

}

variable "startup_script" {
  type = string
//  default = "./modules/compute_instance/runonce.sh"
  description = "Startup script for instace"

}

variable "network" {
  type = string
  description = "network"
}

variable "subnetwork" {
  type = string
  description = "subnetwork link"
}

variable "ip_address_name" {
  type = string
//  default = "my-host"
  description = "IP address for  instance"
}

variable "ip_address_type" {
  type = string
 // default = "INTERNAL"
  description = "IP address type"
}

variable "region" {
  type        = string
  //  default = "us-central"
  description = "Region for subnet"
}

variable "ip" {
  type        = string
  description = "ip address"
}

variable "hdd_name" {
  type = string
  description = "hdd name"
 // default = "hdd01"
}

variable "hdd_size" {
  type = string
//  default = "8"
  description = "hdd size"
}

variable "hdd_type" {
  type = string
//  default = "pd-balanced"
  description = "hdd type"

}

