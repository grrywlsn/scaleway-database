
############################
#### Scaleway variables ####

variable "project_id" {
  description = "Scaleway project ID"
  type        = string
}

variable "region" {
  description = "Scaleway region ID"
  type        = string
}

variable "zone" {
  description = "Scaleway zone ID"
  type        = string
}

############################
##### Module variables #####

variable "database_engine" {
  description = "Database engine type"
  type        = string
  default     = "PostgreSQL-14"
}

variable "database_highly_available" {
  description = "If the database instance is highly available (boolean)"
  type        = bool
  default     = false
}

variable "database_local_storage" {
  description = "Local storage to provision for the database (GB)"
  type        = string
  default     = "10"
}

variable "database_name" {
  description = "Name of the database instance to create"
  type        = string
}

variable "database_node_type" {
  description = "Type of node to use for the database instance"
  type        = string
  default     = "DB-DEV-S"
}

variable "vpc_id" {
  description = "IP of the private network to attach the database"
  type        = string
}

variable "vpc_subnet" {
  description = "Subnet range of the private network to attach the database"
  type        = string
}
