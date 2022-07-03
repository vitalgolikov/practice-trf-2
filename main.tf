//Main module

module "vpc" {
  source          = "./modules/google_network"
  project_id      = var.project
  region          = var.region
  auto_mode       = false
  subnet_name     = "lake-subnet"
  cidr            = "192.168.38.0/24"
  vpc_name        = "rod-vpc"
  router_gw_name  = "gw-local"
  router_nat_name = "gw-nat"

}


module "gce" {
  source          = "./modules/compute_instance"
  region          = var.region
  zone            = var.zone
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.subnet_self_link
  machine_type    = "f1-micro"
  image           = "debian-cloud/debian-9"
  startup_script  = "./modules/compute_instance/runonce.sh"
  name            = "hook-vm"
  ip              = "192.168.38.100"
  ip_address_name = "my-host"
  ip_address_type = "INTERNAL"
  //hdd attached params
  hdd_name = "hdd01"
  hdd_size = "1"
  hdd_type = "pd-balanced"
}