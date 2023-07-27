# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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

title 'Test GCP google_compute_instance_template resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
instance_template = input('instance_template', value: {
  "name": "inspec-gcp-instance-template",
  "description": "A description of the instance template",
  "instance_description": "A description of the instance itself",
  "machine_type": "f1-micro",
  "tag": "foo",
  "can_ip_forward": false,
  "scheduling_automatic_restart": true,
  "scheduling_on_host_maintenance": "MIGRATE",
  "disk_source_image": "debian-cloud/debian-9",
  "disk_auto_delete": true,
  "disk_boot": true,
  "network_interface_network": "default",
  "service_account_scope": "storage-ro"
}, description: 'An instance template definition')
control 'google_compute_instance_template-1.0' do
  impact 1.0
  title 'google_compute_instance_template resource test'

  describe google_compute_instance_template(project: gcp_project_id, name: instance_template['name']) do
    it { should exist }
    its('description') { should eq instance_template['description'] }
    its('properties.description') { should eq instance_template['instance_description'] }
    its('properties.machine_type') { should eq instance_template['machine_type'] }
    its('properties.tags.items') { should include instance_template['tag'] }
    its('properties.disks.count') { should eq 1 }
    its('properties.disks.first.auto_delete') { should eq instance_template['disk_auto_delete'] }
    its('properties.disks.first.boot') { should eq instance_template['disk_boot'] }
    its('properties.network_interfaces.count') { should eq 1 }
    its('properties.service_accounts.count') { should eq 1 }
  end

  describe google_compute_instance_template(project: gcp_project_id, name: 'nonexistent') do
    it { should_not exist }
  end
end
