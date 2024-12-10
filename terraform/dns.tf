resource "google_dns_record_set" "vm" {
  name = "${var.data-project}-vm.${google_dns_managed_zone.prod.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.prod.name

  rrdatas = [google_compute_instance.default.network_interface[0].access_config[0].nat_ip]
}

resource "google_dns_managed_zone" "prod" {
  name     = "${var.domain}"
  dns_name = "${var.domain}."
}
