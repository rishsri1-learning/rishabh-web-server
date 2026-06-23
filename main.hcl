resource "lab" "main" {
  title       = "Rishabh Apache Web Server"
  description = "This lab demonstrates a basic Apache web server setup using the Instruqt Labs environment.\n\nThe lab includes:\n\n* Apache (httpd:2.4) container configuration\n* Network setup\n* Service/Web Application access\n* Terminal access for command execution\n\nThis environment was created as part of the Getting Started → Code Flow tutorial using the skeleton lab template.\n"

  layout = resource.layout.single_panel

  settings {
    theme = "modern-dark"

    timelimit {
      duration   = "15m"
      show_timer = true
    }

    idle {
      enabled      = true
      timeout      = "5m"
      show_warning = true
    }

    controls {
      show_stop = true
    }
  }
  content {
    chapter "__default" {
      title = "Default"
      page "instructions" {
        title     = "Instructions"
        reference = resource.page.instructions
      }
    }
  }
}
