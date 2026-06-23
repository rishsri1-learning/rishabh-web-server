
resource "layout" "single_panel" {
  column {
    width = "100"
    tab "server" {
      title  = "server"
      target = resource.service.server
    }
    tab "shell" {
      title  = "shell"
      target = resource.terminal.shell
    }
    instructions {
      title = "Instructions"
    }
  }
}
