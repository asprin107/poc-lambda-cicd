module "lambda" {
  source = "git::https://github.com/asprin107/sturdy-lamp.git//iac/_module/lambda/simple"

  name               = local.naming_rule.name
  subnet_ids         = data.terraform_remote_state.network.outputs.public_subnet_ids
  security_group_ids = [data.terraform_remote_state.network.outputs.default_sg_id]
  runtime            = "python3.12"
  handler            = "lambda_function.lambda_handler"
  description        = "serverless poc"

  tags = {}
}