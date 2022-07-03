//Main module

module "vpc" {
  source     = "./modules/google_network"
  project_id = var.project
  region     = var.region
  cidr       = "192.168.38.0/24"
  vpc_name   = "rod-vpc"
}


module "gce" {
  source     = "./modules/compute_instance"
  region     = var.region
  zone       = var.zone
  network    = module.vpc.vpc_name
  subnetwork = module.vpc.subnet_self_link
  name       = "hook-vm"
  ip         = "192.168.38.100"
  hdd_size   = "1"

}