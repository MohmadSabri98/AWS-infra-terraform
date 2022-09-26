
variable "regionname" {
  type = string
}

variable "cidr" {
  type = string
}

variable "cidr_public1" {
  type = string
}

variable "cidr_public2" {
  type = string
}

variable "cidr_private1" {
  type = string
}


variable "cidr_private2" {
  type = string
}

variable "az_zone1" {
  type = string
}

variable "az_zone2" {
  type = string
}
variable "my-ami-id" {
  type = string
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}