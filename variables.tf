variable "ami_id" {
default = "ami-01816d07b1128cd2d"
}

variable "instance_type" {
default = "t2.micro"
}

variable "key_name" {
    default = "test-docker"
}

variable "allocated_storage" {
default = 20
}

variable "instance_class" {
default = "db.t4g.micro"
}

variable "engine_version" {
  default = "8.0.39"
}
variable "db_name" {
default = "todo_db"
}

variable "username" {
default = "admin"
}

variable "password" {
    default = "mypassword"
}

variable "publicly_accessible" {
default = true
}