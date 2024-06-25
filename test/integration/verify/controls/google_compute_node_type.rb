# frozen_string_literal: true

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

title 'Test GCP google_compute_node_type resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

node_type = input('node_type', value: {
                    "node_type": 'c2-node-60-240',
  "project": 'ppradhan',
  "zone": 'us-central1-a',
  "full_zone": 'https://www.googleapis.com/compute/v1/projects/ppradhan/zones/us-central1-a',
  "kind": 'compute#nodeType',
  "name": 'c2-node-60-240',
  "description": '60 CPUs and 240 GB RAM',
  "cpu_platform": 'Intel Cascade Lake',
  "self_link": 'https://www.googleapis.com/compute/v1/projects/ppradhan/zones/us-central1-a/nodeTypes/c2-node-60-240',
                  }, description: 'node_type description')
control 'google_compute_node_type-1.0' do
  impact 1.0
  title 'google_compute_node_type resource test'

  describe google_compute_node_type(node_type: node_type['node_type'], project: gcp_project_id, zone: node_type['zone']) do
    it { should exist }
    its('kind') { should cmp node_type['kind'] }
    its('name') { should cmp node_type['name'] }
    its('description') { should cmp node_type['description'] }
    its('cpu_platform') { should cmp node_type['cpu_platform'] }
    its('zone') { should cmp node_type['full_zone'] }
    its('self_link') { should cmp node_type['self_link'] }
  end

  describe google_compute_node_type(node_type: 'n1-standard-1', project: gcp_project_id, zone: 'us-central1-b') do
    it { should_not exist }
  end
end
