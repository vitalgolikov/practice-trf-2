// google compute disk
resource "google_compute_disk" "advanced" {
  name  = var.hdd_name
  size = var.hdd_size
  type  = var.hdd_type
  zone  = var.zone
 }

// google_compute_attached_disk
resource "google_compute_attached_disk" "advanced" {
  disk     = google_compute_disk.advanced.self_link
  instance = google_compute_instance.vm.self_link
}

// google_compute_address

resource "google_compute_address" "lan" {
  name         = var.ip_address_name
  subnetwork   = var.subnetwork
  address_type = var.ip_address_type
  address      = var.ip
  region       = var.region
}


// google_compute_instance
resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone


   boot_disk {
       initialize_params {
         image = var.image
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork
    network_ip = google_compute_address.lan.address

   }

  metadata_startup_script = file(var.startup_script)

}

