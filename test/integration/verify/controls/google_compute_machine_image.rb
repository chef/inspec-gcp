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

title 'Test GCP google_compute_machine_image resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  machine_image = input('machine_image', value: {
  "project": "ppradhan",
  "kind": "compute#machineImage",
  "id": "7552526330490377685",
  "creation_timestamp": "value_creationtimestamp",
  "name": "image-1",
  "description": "value_description",
  "self_link": "value_selflink",
  "source_instance": "value_sourceinstance",
  "status": "value_status",
  "total_storage_bytes": "value_totalstoragebytes"
}, description: 'machine_image description')
control 'google_compute_machine_image-1.0' do
  impact 1.0
  title 'google_compute_machine_image resource test'

  describe google_compute_machine_image(name: machine_image['name'], project: gcp_project_id) do
  	it { should exist }
  	its('kind') { should cmp machine_image['kind'] }
  	its('id') { should cmp machine_image['id'] }
  	its('creation_timestamp') { should cmp machine_image['creation_timestamp'] }
  	its('name') { should cmp machine_image['name'] }
  	its('description') { should cmp machine_image['description'] }
  	its('self_link') { should cmp machine_image['self_link'] }
  	its('source_instance') { should cmp machine_image['source_instance'] }
  	its('status') { should cmp machine_image['status'] }
  	its('total_storage_bytes') { should cmp machine_image['total_storage_bytes'] }

  end

  describe google_compute_machine_image(name: machine_image['name'], project: gcp_project_id) do
  	it { should_not exist }
  end
end