################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache-2.0
################################################################

output "support_server" {
  value = ibm_is_instance.dns_vm_vsi[0].primary_network_interface[0].primary_ip.0.address
}

output "vpc_crn" {
  value = data.ibm_is_vpc.ex_vpc.crn
}