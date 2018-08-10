resource "digitalocean_droplet" "node-2" {
  name = "node-2"
  image = "ubuntu-16-04-x64"
  region = "nyc1"
  size = "s-1vcpu-2gb"
  private_networking = true
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]


  connection {
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"
   }
}
