module "network" {
  source        = "./network"
  cidr          = var.cidr
  cidr_public1  = var.cidr_public1
  cidr_public2  = var.cidr_public2
  cidr_private1 = var.cidr_private1
  cidr_private2 = var.cidr_private2
  az_zone1      = var.az_zone1
  az_zone2      = var.az_zone2
}