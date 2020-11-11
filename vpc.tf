module "network" {
  source  = "app.terraform.io/skm050-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "skm050-network"
  project_id = var.project
    subnets = [
    {
        subnet_name   = "skm050-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
    ]
}