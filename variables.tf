variable "domain_name" {
  description = "Domain name for Elasticsearch cluster (will be prefixed with 'tf-')"
  default     = "es-domain"
}

variable "es_version" {
  description = "Version of Elasticsearch to deploy (default 5.1)"
  default     = "5.1"
}

variable "instance_type" {
  description = "ES instance type for data nodes in the cluster (default t2.small.elasticsearch)"
  default     = "t2.small.elasticsearch"
}

variable "instance_count" {
  description = "Number of data nodes in the cluster (default 6)"
  default     = 6
}

variable "dedicated_master_type" {
  description = "ES instance type to be used for dedicated masters (default same as instance_type)"
  default     = false
}

variable "encrypt_at_rest" {
  description = "Enable encrption at rest (only specific instance family types support it: m4, c4, r4, i2, i3 default: false)"
  default     = false
}

variable "management_iam_roles" {
  description = "List of IAM role ARNs from which to permit management traffic (default ['*']).  Note that a client must match both the IP address and the IAM role patterns in order to be permitted access."
  type        = "list"
  default     = ["*"]
}

variable "management_public_ip_addresses" {
  description = "List of IP addresses from which to permit management traffic (default []).  Note that a client must match both the IP address and the IAM role patterns in order to be permitted access."
  type        = "list"
  default     = []
}

variable "es_zone_awareness" {
  description = "Enable zone awareness for Elasticsearch cluster (default false)"
  default     = "false"
}

variable "ebs_volume_size" {
  description = "Optionally use EBS volumes for data storage by specifying volume size in GB (default 0)"
  default     = 0
}

variable "ebs_volume_type" {
  description = "Storage type of EBS volumes, if used (default gp2)"
  default     = "gp2"
}

variable "kms_key_id" {
  description = "KMS key used for elasticsearch"
  default     = ""
}

variable "snapshot_start_hour" {
  description = "Hour at which automated snapshots are taken, in UTC (default 0)"
  default     = 0
}

variable "vpc_options" {
  description = "A map of supported vpc options"
  type        = "map"

  default = {
    security_group_ids = []
    subnet_ids         = []
  }
}

variable "tags" {
  description = "tags to apply to all resources"
  type        = "map"
  default     = {}
}

variable "index_slow_log_cloudwatch_log_group" {
  description = "ARN for the CloudWatch log group to be use for the index slow logs"
  default     = ""
}

variable "index_slow_log_enabled" {
  description = "Enable the index slow logging (default false)"
  default = false
}

variable "search_slow_log_cloudwatch_log_group" {
  description = "ARN for the CloudWatch log group to be use for the search slow logs"
  default     = ""
}

variable "search_slow_log_enabled" {
  description = "Enable the search slow logging (default false)"
  default     = false
}

variable "es_app_log_cloudwatch_log_group" {
  description = "ARN for the CloudWatch log group to be use for the Elasticsearch application logs"
  default     = ""
}

variable "es_app_log_enable" {
  description = "Enable the Elasticsearch application logging (default false)"
  default     = false
}


# vim: set et fenc=utf-8 ff=unix ft=terraform sts=2 sw=2 ts=2 : 

