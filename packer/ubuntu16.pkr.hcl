source "yandex" "ubuntu16" {
 service_account_key_file = var.key_file
 folder_id = var.folder_id
 source_image_family = var.source_image_id
 image_name = "reddit-base-${formatdate("MM-DD-YYYY", timestamp())}"
 image_family = "reddit-base"
 ssh_username = "ubuntu"
 platform_id = "standard-v1"
 zone = "ru-central1-a"
 subnet_id = "e9bd17vsvk1n3kmqtejd"
 use_ipv4_nat = true
}

build {
 sources = ["source.yandex.ubuntu16"]

 provisioner "shell" {
  name			= "ruby"
  script		= "scripts/install_ruby.sh"
  execute_command	= "sudo {{.Path}}"
 }

 provisioner "shell" {
  name			= "mongodb"
  script		= "scripts/install_mongodb.sh"
  execute_command	= "sudo {{.Path}}"
 }
}
