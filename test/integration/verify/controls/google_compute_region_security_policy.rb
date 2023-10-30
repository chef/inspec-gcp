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

title 'Test GCP google_compute_region_security_policy resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  region_security_policy = input('region_security_policy', value: {
  "project": "value_project",
  "region": "value_region",
  "security_policy": "value_securitypolicy",
  "kind": "value_kind",
  "id": "value_id",
  "creation_timestamp": "value_creationtimestamp",
  "name": "value_name",
  "description": "value_description",
  "fingerprint": "value_fingerprint",
  "self_link": "value_selflink",
  "type": "value_type",
  "label_fingerprint": "value_labelfingerprint"
}, description: 'region_security_policy description')
control 'google_compute_region_security_policy-1.0' do
  impact 1.0
  title 'google_compute_region_security_policy resource test'

  describe google_compute_region_security_policy(project: gcp_project_id, region: region_security_policy['region'], securityPolicy: region_security_policy['securityPolicy']) do
  	it { should exist }
  	its('kind') { should cmp region_security_policy['kind'] }
  	its('id') { should cmp region_security_policy['id'] }
  	its('creation_timestamp') { should cmp region_security_policy['creation_timestamp'] }
  	its('name') { should cmp region_security_policy['name'] }
  	its('description') { should cmp region_security_policy['description'] }
  	its('fingerprint') { should cmp region_security_policy['fingerprint'] }
  	its('self_link') { should cmp region_security_policy['self_link'] }
  	its('type') { should cmp region_security_policy['type'] }
  	its('label_fingerprint') { should cmp region_security_policy['label_fingerprint'] }
  	its('region') { should cmp region_security_policy['region'] }

  end

  describe google_compute_region_security_policy(project: gcp_project_id, region: region_security_policy['region'], securityPolicy: region_security_policy['securityPolicy']) do
  	it { should_not exist }
  end
end
