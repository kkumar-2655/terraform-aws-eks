module "vpc" {
    source = "git::https://github.com/kkumar-2655/terraform-vpc-module.git?ref=main"
    project = var.project
    environment = var.environment
    public_subnets_cidr = var.public_subnets_cidr
    private_subnets_cidr = var.private_subnets_cidr
    database_subnets_cidr = var.database_subnets_cidr

    is_peering_required = true

}

/* output "vpc_ids" {
    value = module.vpc.public_subnet_ids
} */