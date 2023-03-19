resource "scaleway_rdb_instance" "main" {
  name                      = var.database_name
  node_type                 = var.database_node_type
  engine                    = var.database_engine
  is_ha_cluster             = var.database_highly_available
  user_name                 = "my_initial_user"
  password                  = "thiZ_is_v&ry_s3cret"
  volume_type               = "bssd"
  volume_size_in_gb         = var.database_local_storage
  disable_backup            = false
  backup_schedule_frequency = 24 # every day
  backup_schedule_retention = 7  # keep it one week

  private_network {
    ip_net = var.vpc_subnet
    pn_id  = var.vpc_id
  }

}