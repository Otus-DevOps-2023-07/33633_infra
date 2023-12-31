variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "app_disk_image_id" {
  description = "App image ID"
}
variable "db_disk_image_id" {
  description = "DB image ID"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "private_key_path" {
  description = "Path to the private key for ssh access"
}
variable "token_id" {
  description = "YC token"
}
