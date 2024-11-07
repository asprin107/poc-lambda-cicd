output "vpc_id" {
  value = module.network.main_vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.network.private_subnet_ids
}

output "default_sg_id" {
  value = module.network.default_sg_id
}