provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
  version = "~> 0.35.0"
}

resource "yandex_compute_instance" "vm" {
  name = "docker-host"
  platform_id = "standard-v2"

  metadata = {
  ssh-keys = "ubuntu:${file(var.key_path)}"
  }

resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size        = 30
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
connection {
  type = "ssh"
  host = yandex_compute_instance.vm.network_interface.0.nat_ip_address
  user = "ubuntu"
  agent = false
  private_key = file(var.key_path)
  }
provisioner "remote-exec" {
  script = "files/deploy.sh"
 }
}

