variable "engine_version" {
  default = "8.0.39"
}
variable "allocated_storage" {}
variable "instance_class" {
    default = "db.t4g.micro"
}
variable "db_name" {}
variable "username" {}
variable "password" {}
variable "publicly_accessible" {}
variable "security_group_id" {
  description = "The security group ID for the RDS instance."
  type        = string
}
