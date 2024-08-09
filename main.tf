variable "domain" {

}

variable "project_id" {

}

variable "serviceuser_id" {

}

variable "project_serviceuser_name" {

}

variable "project_serviceuser_password" {

}

provider "selectel" {
  domain_name = var.domain
  username    = var.project_serviceuser_name
  password    = var.project_serviceuser_password
}

provider "openstack" {
  auth_url    = "https://cloud.api.selcloud.ru/identity/v3"
  domain_name = var.domain
  tenant_id   = var.project_id
  user_name   = var.project_serviceuser_name 
  password    = var.project_serviceuser_password 
  region      = "ru-9"
}
