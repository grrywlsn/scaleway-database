
############################
#### Scaleway variables ####

variable "scaleway_project_id" {
  description = "Scaleway project ID"
  type        = string
}

variable "scaleway_organization_id" {
  description = "Scaleway organisation ID"
  type        = string
}

variable "scaleway_region" {
  description = "Scaleway region ID"
  type        = string
}

variable "scaleway_zone" {
  description = "Scaleway zone ID"
  type        = string
}

############################
##### Module variables #####

variable "database_allowed_ips" {
  description = "List of IP CIDRs that are allowed to connect to the instance"
  type        = list(string)
  default     = []
}

variable "database_engine" {
  description = "Database engine type"
  type        = string
  default     = "PostgreSQL-15"
}

variable "database_highly_available" {
  description = "If the database instance is highly available (boolean)"
  type        = bool
  default     = true
}

variable "database_storage_size_gb" {
  description = "Local storage to provision for the database (GB)"
  type        = string
  default     = "10"
}

variable "database_max_connections" {
  description = "Maximum connections to the database"
  type        = string
  default     = "1000"
}
variable "database_name" {
  description = "Name of the database instance to create"
  type        = string
}

variable "database_node_type" {
  description = "Type of node to use for the database instance"
  type        = string
  default     = "DB-PLAY2-PICO"
}

variable "private_network_id" {
  description = "ID of the private network in which to place the database"
  type        = string
}
