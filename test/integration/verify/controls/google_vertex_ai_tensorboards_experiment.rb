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

title 'Test GCP google_vertex_ai_tensorboards_experiment resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  tensorboards_experiment = input('tensorboards_experiment', value: {
  "name": "inspec-tensor-experiment",
  "region": "us-central1",
  "parent": "projects/165434197229/locations/us-central1/tensorboards/6346548241290493952/experiments/",
  "description": "value_description",
  "tensorboard": "6346548241290493952",
  "source": "value_source",
  "display_name": "inspec-tensor-experiment",
  "create_time": "value_createtime",
  "update_time": "value_updatetime",
  "etag": "value_etag"
}, description: 'tensorboards_experiment description')
control 'google_vertex_ai_tensorboards_experiment-1.0' do
  impact 1.0
  title 'google_vertex_ai_tensorboards_experiment resource test'

  describe google_vertex_ai_tensorboards_experiment(name: "projects/#{gcp_project_id}/locations/#{tensorboards_experiment['region']}/tensorboards/#{tensorboards_experiment['tensorboard']}/experiments/#{tensorboards_experiment['name']}", region: tensorboards_experiment['region']) do
  	it { should exist }
  	its('description') { should cmp tensorboards_experiment['description'] }
  	its('source') { should cmp tensorboards_experiment['source'] }
  	its('display_name') { should cmp tensorboards_experiment['display_name'] }
  	its('create_time') { should cmp tensorboards_experiment['create_time'] }
  	its('update_time') { should cmp tensorboards_experiment['update_time'] }
  	its('name') { should cmp tensorboards_experiment['name'] }
  	its('etag') { should cmp tensorboards_experiment['etag'] }

  end

  describe google_vertex_ai_tensorboards_experiment(name: "does_not_exit", region: tensorboards_experiment['region']) do
  	it { should_not exist }
  end
end