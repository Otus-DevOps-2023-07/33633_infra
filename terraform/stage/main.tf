#terraform {
#  required_providers {
#    yandex = {
#      source  = "yandex-cloud/yandex"
#      version = "0.95.0"
#    }
#  }
#}

provider "yandex" {
  token     = "y0_AgAAAAABfS9HAATuwQAAAADrnG4qDVpf6JTWQJ2qehT8AZeuoeDBrEY"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

module "vpc" {
  source = "../modules/vpc"
}
module "app" {
  source            = "../modules/app"
  public_key_path   = var.public_key_path
  app_disk_image_id = var.app_disk_image_id
  subnet_id         = module.vpc.vpc_id
}

module "db" {
  source           = "../modules/db"
  public_key_path  = var.public_key_path
  db_disk_image_id = var.db_disk_image_id
  subnet_id        = module.vpc.vpc_id
}
