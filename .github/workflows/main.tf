resource "my_bucket" "auto-expire" {
  name          = "Github_actions_demo"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}
