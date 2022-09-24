module "Task_Network" {
  source         = "/media/moabdou4/726684D666849C8B/ITI DevOps/terraform/Task/Module"
  vpc_cidr       = var.vpc_cidr
  subnetpc1_cidr = var.subnetpc1_cidr
  subnetpc2_cidr = var.subnetpc2_cidr
  subnetpv1_cidr = var.subnetpv1_cidr
  subnetpv2_cidr = var.subnetpv2_cidr
  region         = var.region

}
