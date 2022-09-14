
resource "ibm_container_vpc_worker_pool" "test_pool" {
  cluster          = var.cluster
  worker_pool_name = var.cluster
  flavor           = var.flavor
  vpc_id           = var.vpc_id
  worker_count     = var.worker_count
  entitlement      = var.entitlement

  zones {
    name      = var.name
    subnet_id = var.subnet_id
  }
}