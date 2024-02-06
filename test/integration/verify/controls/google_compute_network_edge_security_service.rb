# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

title 'Test GCP google_compute_network_edge_security_service resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  network_edge_security_service = input('network_edge_security_service', value: {
  "machine_type": "value_machinetype",
  "project": "ppradhan",
  "zone": "us-central1-a",
  "kind": "compute#networkEdgeSecurityService",
  "id": "6659048510113795180",
  "creation_timestamp": "value_creationtimestamp",
  "name": "new-network-edge-security-service",
  "description": "value_description",
  "self_link": "value_selflink",
  "self_link_with_id": "value_selflinkwithid",
  "region": "us-central1",
  "fingerprint": "value_fingerprint",
  "security_policy": "value_securitypolicy"
}, description: 'network_edge_security_service description')
control 'google_compute_network_edge_security_service-1.0' do
  impact 1.0
  title 'google_compute_network_edge_security_service resource test'

  describe google_compute_network_edge_security_service(name: network_edge_security_service['name'], project: gcp_project_id, region: network_edge_security_service['region']) do
  	it { should exist }
  	its('kind') { should cmp network_edge_security_service['kind'] }
  	its('id') { should cmp network_edge_security_service['id'] }
  	its('creation_timestamp') { should cmp network_edge_security_service['creation_timestamp'] }
  	its('name') { should cmp network_edge_security_service['name'] }
  	its('description') { should cmp network_edge_security_service['description'] }
  	its('self_link') { should cmp network_edge_security_service['self_link'] }
  	its('self_link_with_id') { should cmp network_edge_security_service['self_link_with_id'] }
  	its('region') { should cmp network_edge_security_service['region'] }
  	its('fingerprint') { should cmp network_edge_security_service['fingerprint'] }
  	its('security_policy') { should cmp network_edge_security_service['security_policy'] }

  end

  describe google_compute_network_edge_security_service(name: network_edge_security_service['name'], project: gcp_project_id, region: network_edge_security_service['region']) do
  	it { should_not exist }
  end
end