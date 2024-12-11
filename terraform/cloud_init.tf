data "cloudinit_config" "conf" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/cloud-config"
    content      = file("vm_config.yml")
    filename     = "vm_config.yml"
  }
}
