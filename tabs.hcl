resource "service" "server" {
  target = resource.container.server
  scheme = "http"
  port   = 80
}

resource "terminal" "shell" {
  target = resource.container.server
  shell  = "/bin/bash"
}
