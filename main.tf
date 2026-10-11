resource "google_netapp_volume" "netapp_volumes" {
  for_each = var.netapp_volumes

  capacity_gib       = each.value.capacity_gib
  location           = each.value.location
  name               = each.value.name
  protocols          = each.value.protocols
  storage_pool       = each.value.storage_pool
  deletion_policy    = each.value.deletion_policy
  description        = each.value.description
  kerberos_enabled   = each.value.kerberos_enabled
  labels             = each.value.labels
  large_capacity     = each.value.large_capacity
  multiple_endpoints = each.value.multiple_endpoints
  project            = each.value.project
  restricted_actions = each.value.restricted_actions
  security_style     = each.value.security_style
  share_name         = each.value.share_name
  smb_settings       = each.value.smb_settings
  snapshot_directory = each.value.snapshot_directory
  throughput_mibps   = each.value.throughput_mibps
  unix_permissions   = each.value.unix_permissions

  dynamic "backup_config" {
    for_each = each.value.backup_config != null ? [each.value.backup_config] : []
    content {
      backup_policies          = backup_config.value.backup_policies
      backup_vault             = backup_config.value.backup_vault
      scheduled_backup_enabled = backup_config.value.scheduled_backup_enabled
    }
  }

  dynamic "block_devices" {
    for_each = each.value.block_devices != null ? each.value.block_devices : []
    content {
      host_groups = block_devices.value.host_groups
      name        = block_devices.value.name
      os_type     = block_devices.value.os_type
    }
  }

  dynamic "cache_parameters" {
    for_each = each.value.cache_parameters != null ? [each.value.cache_parameters] : []
    content {
      dynamic "cache_config" {
        for_each = cache_parameters.value.cache_config != null ? [cache_parameters.value.cache_config] : []
        content {
          cifs_change_notify_enabled = cache_config.value.cifs_change_notify_enabled
        }
      }
      enable_global_file_lock     = cache_parameters.value.enable_global_file_lock
      peer_cluster_name           = cache_parameters.value.peer_cluster_name
      peer_ip_addresses           = cache_parameters.value.peer_ip_addresses
      peer_svm_name               = cache_parameters.value.peer_svm_name
      peer_volume_name            = cache_parameters.value.peer_volume_name
      peering_command_expiry_time = cache_parameters.value.peering_command_expiry_time
    }
  }

  dynamic "export_policy" {
    for_each = each.value.export_policy != null ? [each.value.export_policy] : []
    content {
      dynamic "rules" {
        for_each = export_policy.value.rules
        content {
          access_type           = rules.value.access_type
          allowed_clients       = rules.value.allowed_clients
          anon_uid              = rules.value.anon_uid
          has_root_access       = rules.value.has_root_access
          kerberos5_read_only   = rules.value.kerberos5_read_only
          kerberos5_read_write  = rules.value.kerberos5_read_write
          kerberos5i_read_only  = rules.value.kerberos5i_read_only
          kerberos5i_read_write = rules.value.kerberos5i_read_write
          kerberos5p_read_only  = rules.value.kerberos5p_read_only
          kerberos5p_read_write = rules.value.kerberos5p_read_write
          nfsv3                 = rules.value.nfsv3
          nfsv4                 = rules.value.nfsv4
          squash_mode           = rules.value.squash_mode
        }
      }
    }
  }

  dynamic "hybrid_replication_parameters" {
    for_each = each.value.hybrid_replication_parameters != null ? [each.value.hybrid_replication_parameters] : []
    content {
      cluster_location               = hybrid_replication_parameters.value.cluster_location
      description                    = hybrid_replication_parameters.value.description
      hybrid_replication_type        = hybrid_replication_parameters.value.hybrid_replication_type
      labels                         = hybrid_replication_parameters.value.labels
      large_volume_constituent_count = hybrid_replication_parameters.value.large_volume_constituent_count
      peer_cluster_name              = hybrid_replication_parameters.value.peer_cluster_name
      peer_ip_addresses              = hybrid_replication_parameters.value.peer_ip_addresses
      peer_svm_name                  = hybrid_replication_parameters.value.peer_svm_name
      peer_volume_name               = hybrid_replication_parameters.value.peer_volume_name
      replication                    = hybrid_replication_parameters.value.replication
      replication_schedule           = hybrid_replication_parameters.value.replication_schedule
    }
  }

  dynamic "large_capacity_config" {
    for_each = each.value.large_capacity_config != null ? [each.value.large_capacity_config] : []
    content {
      constituent_count = large_capacity_config.value.constituent_count
    }
  }

  dynamic "restore_parameters" {
    for_each = each.value.restore_parameters != null ? [each.value.restore_parameters] : []
    content {
      source_backup   = restore_parameters.value.source_backup
      source_snapshot = restore_parameters.value.source_snapshot
    }
  }

  dynamic "snapshot_policy" {
    for_each = each.value.snapshot_policy != null ? [each.value.snapshot_policy] : []
    content {
      dynamic "daily_schedule" {
        for_each = snapshot_policy.value.daily_schedule != null ? [snapshot_policy.value.daily_schedule] : []
        content {
          hour              = daily_schedule.value.hour
          minute            = daily_schedule.value.minute
          snapshots_to_keep = daily_schedule.value.snapshots_to_keep
        }
      }
      enabled = snapshot_policy.value.enabled
      dynamic "hourly_schedule" {
        for_each = snapshot_policy.value.hourly_schedule != null ? [snapshot_policy.value.hourly_schedule] : []
        content {
          minute            = hourly_schedule.value.minute
          snapshots_to_keep = hourly_schedule.value.snapshots_to_keep
        }
      }
      dynamic "monthly_schedule" {
        for_each = snapshot_policy.value.monthly_schedule != null ? [snapshot_policy.value.monthly_schedule] : []
        content {
          days_of_month     = monthly_schedule.value.days_of_month
          hour              = monthly_schedule.value.hour
          minute            = monthly_schedule.value.minute
          snapshots_to_keep = monthly_schedule.value.snapshots_to_keep
        }
      }
      dynamic "weekly_schedule" {
        for_each = snapshot_policy.value.weekly_schedule != null ? [snapshot_policy.value.weekly_schedule] : []
        content {
          day               = weekly_schedule.value.day
          hour              = weekly_schedule.value.hour
          minute            = weekly_schedule.value.minute
          snapshots_to_keep = weekly_schedule.value.snapshots_to_keep
        }
      }
    }
  }

  dynamic "tiering_policy" {
    for_each = each.value.tiering_policy != null ? [each.value.tiering_policy] : []
    content {
      cooling_threshold_days       = tiering_policy.value.cooling_threshold_days
      hot_tier_bypass_mode_enabled = tiering_policy.value.hot_tier_bypass_mode_enabled
      tier_action                  = tiering_policy.value.tier_action
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

