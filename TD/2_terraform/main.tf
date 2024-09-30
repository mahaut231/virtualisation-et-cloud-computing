provider "google" {
    project = "esirem"
    credentials = "./student.json"
    region  = "europe-west9"
}


resource "google_compute_network" "vpc-network" {
    name = "vpc-network"
    mtu = 1460
}

resource "google_dns_record_set" "enregistrementDNS"{
    name = "dns"
    type = "A"
    ttl = 300
    managed_zone = google_dns_managed_zone.prod.name

}