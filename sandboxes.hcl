
resource "network" "network" {
  subnet = "10.100.100.0/24"
}


resource "container" "server" {
  network {
    id = resource.network.network.meta.id
  }
  image {
    name = "httpd:2.4"
  }
  privileged = false
  resources {
    cpu    = 1000
    memory = 256
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
