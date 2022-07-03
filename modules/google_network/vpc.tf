// google_compute_network
resource "google_compute_network" "vital_vpc_network" {
  project                 = var.project_id
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_mode
}

// google_compute_subnetwork
resource "google_compute_subnetwork" "vital_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.vital_vpc_network.id

}

// google_compute_network_peering
resource "google_compute_router" "router_gw_for_vital_vpc" {
  name    = var.router_gw_name
  network = google_compute_network.vital_vpc_network.id
  region = var.region

}

// google_compute_router_nat
resource "google_compute_router_nat" "router_nat_for_vital_vpc" {
  name                               = var.router_nat_name
  router                             = google_compute_router.router_gw_for_vital_vpc.name
  region                             = google_compute_router.router_gw_for_vital_vpc.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

}


