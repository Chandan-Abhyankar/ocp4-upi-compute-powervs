# This file is used to provide variables to ansible-playbook
node_labels: {
  "topology.kubernetes.io/region": "${region}",
  "topology.kubernetes.io/zone": "${zone}",
  "node.kubernetes.io/instance-type": "${system_type}"
}

