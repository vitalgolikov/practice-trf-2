//output "subnet_id" {
//  value = google_compute_subnetwork.vital_subnet.id
//}

output "subnet_self_link" {
  value = google_compute_subnetwork.vital_subnet.self_link
}

output "vpc_name" {
  value = google_compute_network.vital_vpc_network.name
}