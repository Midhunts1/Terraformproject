provider "google" {
  	project = "spartan-apricot-322906"
  	region = "asia-east1"
	zone = "asia-east1-a"
}
resource"google_compute_instance" "vm_instance" {
	name = "terraform-instance1"
	machine_type = "f1-micro"
	boot_disk {
		initialize_params {
			image = "ubuntu-1604-xenial-v20170328"
			}
		}
	network_interface {
		#A default network is created for all GCP
		network = "default"
		access_config {
		}
	}
}