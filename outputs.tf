output "netapp_volumes_id" {
  description = "Map of id values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no id are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "netapp_volumes_active_directory" {
  description = "Map of active_directory values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no active_directory are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.active_directory if v.active_directory != null && length(v.active_directory) > 0 }
}
output "netapp_volumes_backup_config" {
  description = "Map of backup_config values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no backup_config are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.backup_config) if v.backup_config != null && length(v.backup_config) > 0 }
}
output "netapp_volumes_block_devices" {
  description = "Map of block_devices values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no block_devices are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.block_devices if v.block_devices != null && length(v.block_devices) > 0 }
}
output "netapp_volumes_cache_parameters" {
  description = "Map of cache_parameters values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no cache_parameters are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.cache_parameters) if v.cache_parameters != null && length(v.cache_parameters) > 0 }
}
output "netapp_volumes_capacity_gib" {
  description = "Map of capacity_gib values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no capacity_gib are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.capacity_gib if v.capacity_gib != null && length(v.capacity_gib) > 0 }
}
output "netapp_volumes_cold_tier_size_gib" {
  description = "Map of cold_tier_size_gib values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no cold_tier_size_gib are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.cold_tier_size_gib if v.cold_tier_size_gib != null && length(v.cold_tier_size_gib) > 0 }
}
output "netapp_volumes_create_time" {
  description = "Map of create_time values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no create_time are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "netapp_volumes_deletion_policy" {
  description = "Map of deletion_policy values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no deletion_policy are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "netapp_volumes_description" {
  description = "Map of description values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no description are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "netapp_volumes_effective_labels" {
  description = "Map of effective_labels values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no effective_labels are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "netapp_volumes_encryption_type" {
  description = "Map of encryption_type values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no encryption_type are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.encryption_type if v.encryption_type != null && length(v.encryption_type) > 0 }
}
output "netapp_volumes_export_policy" {
  description = "Map of export_policy values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no export_policy are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.export_policy) if v.export_policy != null && length(v.export_policy) > 0 }
}
output "netapp_volumes_has_replication" {
  description = "Map of has_replication values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no has_replication are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.has_replication if v.has_replication != null }
}
output "netapp_volumes_hot_tier_size_used_gib" {
  description = "Map of hot_tier_size_used_gib values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no hot_tier_size_used_gib are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.hot_tier_size_used_gib if v.hot_tier_size_used_gib != null && length(v.hot_tier_size_used_gib) > 0 }
}
output "netapp_volumes_hybrid_replication_parameters" {
  description = "Map of hybrid_replication_parameters values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no hybrid_replication_parameters are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.hybrid_replication_parameters) if v.hybrid_replication_parameters != null && length(v.hybrid_replication_parameters) > 0 }
}
output "netapp_volumes_kerberos_enabled" {
  description = "Map of kerberos_enabled values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no kerberos_enabled are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.kerberos_enabled if v.kerberos_enabled != null }
}
output "netapp_volumes_kms_config" {
  description = "Map of kms_config values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no kms_config are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.kms_config if v.kms_config != null && length(v.kms_config) > 0 }
}
output "netapp_volumes_labels" {
  description = "Map of labels values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no labels are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "netapp_volumes_large_capacity" {
  description = "Map of large_capacity values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no large_capacity are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.large_capacity if v.large_capacity != null }
}
output "netapp_volumes_large_capacity_config" {
  description = "Map of large_capacity_config values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no large_capacity_config are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.large_capacity_config) if v.large_capacity_config != null && length(v.large_capacity_config) > 0 }
}
output "netapp_volumes_ldap_enabled" {
  description = "Map of ldap_enabled values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no ldap_enabled are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.ldap_enabled if v.ldap_enabled != null }
}
output "netapp_volumes_location" {
  description = "Map of location values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no location are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.location if v.location != null && length(v.location) > 0 }
}
output "netapp_volumes_mount_options" {
  description = "Map of mount_options values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no mount_options are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.mount_options if v.mount_options != null && length(v.mount_options) > 0 }
}
output "netapp_volumes_multiple_endpoints" {
  description = "Map of multiple_endpoints values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no multiple_endpoints are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.multiple_endpoints if v.multiple_endpoints != null }
}
output "netapp_volumes_name" {
  description = "Map of name values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no name are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "netapp_volumes_network" {
  description = "Map of network values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no network are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.network if v.network != null && length(v.network) > 0 }
}
output "netapp_volumes_project" {
  description = "Map of project values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no project are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "netapp_volumes_protocols" {
  description = "Map of protocols values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no protocols are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.protocols if v.protocols != null && length(v.protocols) > 0 }
}
output "netapp_volumes_psa_range" {
  description = "Map of psa_range values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no psa_range are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.psa_range if v.psa_range != null && length(v.psa_range) > 0 }
}
output "netapp_volumes_replica_zone" {
  description = "Map of replica_zone values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no replica_zone are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.replica_zone if v.replica_zone != null && length(v.replica_zone) > 0 }
}
output "netapp_volumes_restore_parameters" {
  description = "Map of restore_parameters values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no restore_parameters are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.restore_parameters) if v.restore_parameters != null && length(v.restore_parameters) > 0 }
}
output "netapp_volumes_restricted_actions" {
  description = "Map of restricted_actions values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no restricted_actions are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.restricted_actions if v.restricted_actions != null && length(v.restricted_actions) > 0 }
}
output "netapp_volumes_security_style" {
  description = "Map of security_style values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no security_style are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.security_style if v.security_style != null && length(v.security_style) > 0 }
}
output "netapp_volumes_service_level" {
  description = "Map of service_level values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no service_level are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.service_level if v.service_level != null && length(v.service_level) > 0 }
}
output "netapp_volumes_share_name" {
  description = "Map of share_name values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no share_name are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.share_name if v.share_name != null && length(v.share_name) > 0 }
}
output "netapp_volumes_smb_settings" {
  description = "Map of smb_settings values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no smb_settings are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.smb_settings if v.smb_settings != null && length(v.smb_settings) > 0 }
}
output "netapp_volumes_snapshot_directory" {
  description = "Map of snapshot_directory values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no snapshot_directory are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.snapshot_directory if v.snapshot_directory != null }
}
output "netapp_volumes_snapshot_policy" {
  description = "Map of snapshot_policy values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no snapshot_policy are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.snapshot_policy) if v.snapshot_policy != null && length(v.snapshot_policy) > 0 }
}
output "netapp_volumes_state" {
  description = "Map of state values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no state are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.state if v.state != null && length(v.state) > 0 }
}
output "netapp_volumes_state_details" {
  description = "Map of state_details values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no state_details are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.state_details if v.state_details != null && length(v.state_details) > 0 }
}
output "netapp_volumes_storage_pool" {
  description = "Map of storage_pool values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no storage_pool are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.storage_pool if v.storage_pool != null && length(v.storage_pool) > 0 }
}
output "netapp_volumes_terraform_labels" {
  description = "Map of terraform_labels values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no terraform_labels are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "netapp_volumes_throughput_mibps" {
  description = "Map of throughput_mibps values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no throughput_mibps are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.throughput_mibps if v.throughput_mibps != null }
}
output "netapp_volumes_tiering_policy" {
  description = "Map of tiering_policy values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no tiering_policy are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => one(v.tiering_policy) if v.tiering_policy != null && length(v.tiering_policy) > 0 }
}
output "netapp_volumes_unix_permissions" {
  description = "Map of unix_permissions values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no unix_permissions are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.unix_permissions if v.unix_permissions != null && length(v.unix_permissions) > 0 }
}
output "netapp_volumes_used_gib" {
  description = "Map of used_gib values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no used_gib are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.used_gib if v.used_gib != null && length(v.used_gib) > 0 }
}
output "netapp_volumes_zone" {
  description = "Map of zone values across all netapp_volumes, keyed the same as var.netapp_volumes except keys with no zone are omitted"
  value       = { for k, v in google_netapp_volume.netapp_volumes : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

