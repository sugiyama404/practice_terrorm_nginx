provider "aws" {
  region = var.region
}

# IAM
module "iam" {
  source   = "./modules/iam"
  app_name = var.app_name
}

# ECR
module "ecr" {
  source     = "./modules/ecr"
  image_name = var.image_name
  app_name   = var.app_name
}

# Null Resource
module "after_ecr" {
  source     = "./modules/bash"
  region     = var.region
  image_name = var.image_name
}

# network
module "network" {
  source   = "./modules/network"
  app_name = var.app_name
}

# ECS
module "ecs" {
  source       = "./modules/ecs"
  app_name     = var.app_name
  vpc_id       = module.network.security-group-id
  subnet_id    = module.network.subnet-public-1a-id
  aws_iam_role = module.iam.aws_iam_role

}
