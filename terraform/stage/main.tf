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
