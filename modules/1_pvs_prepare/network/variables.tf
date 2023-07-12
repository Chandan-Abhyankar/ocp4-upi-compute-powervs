################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache-2.0
################################################################

variable "powervs_service_instance_id" {}

variable "name_prefix" {
  type = string

  validation {
    condition     = length(var.name_prefix) <= 32
    error_message = "Length cannot exceed 32 characters for name_prefix."
  }
}

variable "cluster_id" {
  type = string

  validation {
    condition     = length(var.cluster_id) <= 32
    error_message = "Length cannot exceed 32 characters when combined with cluster_id_prefix."
  }
}

variable "pub_network_dns" {}
variable "pvs_network_name" {}
variable "machine_cidr" {}
variable "vpc_dns_server" {}
variable "enable_snat" {}
variable "cluster_id" {}
variable "cloud_conn_name" {}
variable "vpc_crn" {}



variable "node_prefix" {
  type = string

  validation {
    condition     = length(var.node_prefix) <= 32
    error_message = "Length cannot exceed 32 characters for node_prefix."
  }
}

variable "vpc_region" {}
variable "vpc_name" {}
variable "powervs_region" {}
variable "ibmcloud_api_key" {}

variable "service_instance_id" {}
variable "rhel_image_name" {}

variable "private_key" {}
variable "public_key" {}

variable "processor_type" {}
variable "system_type" {}
variable "powervs_network_name" {}


variable "bastion_health_status" {}
variable "private_network_mtu" {}

variable "rhel_username" {}
variable "ssh_agent" {}
variable "connection_timeout" {}

variable "rhel_subscription_username" {}
variable "rhel_subscription_password" {}
variable "rhel_subscription_org" {}
variable "rhel_subscription_activationkey" {}
variable "ansible_repo_name" {}

variable "rhel_smt" {}

### OpenShift Cluster
variable "openshift_api_url" {
  type        = string
  description = "The API URL of the OpenShift Cluster"
  default     = "https://api.example.ocp-multiarch.xyz:6443"
}

variable "openshift_user" {
  type        = string
  description = "The user of the OpenShift Cluster"
  default     = ""
}

variable "openshift_pass" {
  type        = string
  description = "The pass of the OpenShift Cluster"
  default     = ""
}

### RHCOS
variable "rhcos_image_name" {}
variable "rhcos_import_image" {}
variable "rhcos_import_image_filename" {}
variable "rhcos_import_image_storage_type" {}