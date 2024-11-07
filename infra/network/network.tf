module "network" {
  source = "git::https://github.com/asprin107/sturdy-lamp.git//iac/_module/network/v1-alpha"

  name   = var.project
  region = var.region

  rule = {
    host_cidr = "10.0.0.0/16"
    subnets = {
      newbits         = 8
      available_zones = ["a", "c"]
      pub = {
        amount = 2
        max    = 20
      }
      prv = {
        amount = 0
        max    = 44
      }
    }
  }
}