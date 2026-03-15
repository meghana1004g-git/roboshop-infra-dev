module "vpc" {
  source      = "git::https://github.com/meghana1004g-git/terraform.aws.vpc.git?ref=main"
  project     = var.project
  environment = var.environment
  is_peering_required = true

}
