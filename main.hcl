resource "lab" "main" {
  title       = "Rishabh Web Server"
  description = ""

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
