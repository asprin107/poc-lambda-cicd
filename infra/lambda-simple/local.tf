locals {
  naming_rule = {
    fullname = "${var.project}-${var.name}-${random_string.unique_key.result}"
    name     = "${var.name}-${random_string.unique_key.result}"
  }
}