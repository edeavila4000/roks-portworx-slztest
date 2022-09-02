##################################
# scale up
##################################
resource "ibm_resource_instance" "scale_up" {
  location          = var.region
  resource_group_id = data.ibm_resource_group.group.id

parameters = {
 apikey           = var.ibmcloud_api_key
 cluster_name     = var.cluster_name
 clusters         = data.ibm_container_vpc_cluster.cluster.id  
 members_cpu_allocation_count = var.cpu_allocation_count
 members_disk_allocation_mb   = var.disk_allocation_mb 
 members_memory_allocation_mb = var.memory_allocation_mb
 num_cloud_drives             = var.num_cloud_drives
 max_storage_node_per_zone    = var.max_storage_node_per_zone
 size                         = element(var.cloud_drives_sizes, 0)
 size1                        = (var.num_cloud_drives == 2) ? element(var.cloud_drives_sizes, 1) : 0
 size2                        = (var.num_cloud_drives == 3) ? element(var.cloud_drives_sizes, 2) : 0
  }
}