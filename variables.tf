variable "netapp_volumes" {
  description = <<EOT
Map of netapp_volumes, attributes below
Required:
    - capacity_gib
    - location
    - name
    - protocols
    - storage_pool
Optional:
    - deletion_policy
    - description
    - kerberos_enabled
    - labels
    - large_capacity
    - multiple_endpoints
    - project
    - restricted_actions
    - security_style
    - share_name
    - smb_settings
    - snapshot_directory
    - throughput_mibps
    - unix_permissions
    - backup_config (block):
        - backup_policies (optional)
        - backup_vault (optional)
        - scheduled_backup_enabled (optional)
    - block_devices (block):
        - host_groups (optional)
        - name (optional)
        - os_type (required)
    - cache_parameters (block):
        - cache_config (optional, block):
            - cifs_change_notify_enabled (optional)
        - enable_global_file_lock (optional)
        - peer_cluster_name (optional)
        - peer_ip_addresses (optional)
        - peer_svm_name (optional)
        - peer_volume_name (optional)
        - peering_command_expiry_time (optional)
    - export_policy (block):
        - rules (required, block):
            - access_type (optional)
            - allowed_clients (optional)
            - anon_uid (optional)
            - has_root_access (optional)
            - kerberos5_read_only (optional)
            - kerberos5_read_write (optional)
            - kerberos5i_read_only (optional)
            - kerberos5i_read_write (optional)
            - kerberos5p_read_only (optional)
            - kerberos5p_read_write (optional)
            - nfsv3 (optional)
            - nfsv4 (optional)
            - squash_mode (optional)
    - hybrid_replication_parameters (block):
        - cluster_location (optional)
        - description (optional)
        - hybrid_replication_type (optional)
        - labels (optional)
        - large_volume_constituent_count (optional)
        - peer_cluster_name (optional)
        - peer_ip_addresses (optional)
        - peer_svm_name (optional)
        - peer_volume_name (optional)
        - replication (optional)
        - replication_schedule (optional)
    - large_capacity_config (block):
        - constituent_count (optional)
    - restore_parameters (block):
        - source_backup (optional)
        - source_snapshot (optional)
    - snapshot_policy (block):
        - daily_schedule (optional, block):
            - hour (optional)
            - minute (optional)
            - snapshots_to_keep (required)
        - enabled (optional)
        - hourly_schedule (optional, block):
            - minute (optional)
            - snapshots_to_keep (required)
        - monthly_schedule (optional, block):
            - days_of_month (optional)
            - hour (optional)
            - minute (optional)
            - snapshots_to_keep (required)
        - weekly_schedule (optional, block):
            - day (optional)
            - hour (optional)
            - minute (optional)
            - snapshots_to_keep (required)
    - tiering_policy (block):
        - cooling_threshold_days (optional)
        - hot_tier_bypass_mode_enabled (optional)
        - tier_action (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    capacity_gib       = string
    location           = string
    name               = string
    protocols          = list(string)
    storage_pool       = string
    deletion_policy    = optional(string)
    description        = optional(string)
    kerberos_enabled   = optional(bool)
    labels             = optional(map(string))
    large_capacity     = optional(bool)
    multiple_endpoints = optional(bool)
    project            = optional(string)
    restricted_actions = optional(list(string))
    security_style     = optional(string)
    share_name         = optional(string)
    smb_settings       = optional(list(string))
    snapshot_directory = optional(bool)
    throughput_mibps   = optional(number)
    unix_permissions   = optional(string)
    backup_config = optional(object({
      backup_policies          = optional(list(string))
      backup_vault             = optional(string)
      scheduled_backup_enabled = optional(bool)
    }))
    block_devices = optional(list(object({
      host_groups = optional(list(string))
      name        = optional(string)
      os_type     = string
    })))
    cache_parameters = optional(object({
      cache_config = optional(object({
        cifs_change_notify_enabled = optional(bool)
      }))
      enable_global_file_lock     = optional(bool)
      peer_cluster_name           = optional(string)
      peer_ip_addresses           = optional(list(string))
      peer_svm_name               = optional(string)
      peer_volume_name            = optional(string)
      peering_command_expiry_time = optional(string)
    }))
    export_policy = optional(object({
      rules = list(object({
        access_type           = optional(string)
        allowed_clients       = optional(string)
        anon_uid              = optional(number)
        has_root_access       = optional(string)
        kerberos5_read_only   = optional(bool)
        kerberos5_read_write  = optional(bool)
        kerberos5i_read_only  = optional(bool)
        kerberos5i_read_write = optional(bool)
        kerberos5p_read_only  = optional(bool)
        kerberos5p_read_write = optional(bool)
        nfsv3                 = optional(bool)
        nfsv4                 = optional(bool)
        squash_mode           = optional(string)
      }))
    }))
    hybrid_replication_parameters = optional(object({
      cluster_location               = optional(string)
      description                    = optional(string)
      hybrid_replication_type        = optional(string)
      labels                         = optional(map(string))
      large_volume_constituent_count = optional(number)
      peer_cluster_name              = optional(string)
      peer_ip_addresses              = optional(list(string))
      peer_svm_name                  = optional(string)
      peer_volume_name               = optional(string)
      replication                    = optional(string)
      replication_schedule           = optional(string)
    }))
    large_capacity_config = optional(object({
      constituent_count = optional(number)
    }))
    restore_parameters = optional(object({
      source_backup   = optional(string)
      source_snapshot = optional(string)
    }))
    snapshot_policy = optional(object({
      daily_schedule = optional(object({
        hour              = optional(number)
        minute            = optional(number)
        snapshots_to_keep = number
      }))
      enabled = optional(bool)
      hourly_schedule = optional(object({
        minute            = optional(number)
        snapshots_to_keep = number
      }))
      monthly_schedule = optional(object({
        days_of_month     = optional(string)
        hour              = optional(number)
        minute            = optional(number)
        snapshots_to_keep = number
      }))
      weekly_schedule = optional(object({
        day               = optional(string)
        hour              = optional(number)
        minute            = optional(number)
        snapshots_to_keep = number
      }))
    }))
    tiering_policy = optional(object({
      cooling_threshold_days       = optional(number)
      hot_tier_bypass_mode_enabled = optional(bool)
      tier_action                  = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.netapp_volumes : (
        v.export_policy == null || (length(v.export_policy.rules) >= 1)
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

