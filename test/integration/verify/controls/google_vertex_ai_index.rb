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

title 'Test GCP google_vertex_ai_index resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  index = input('index', value: {
  "name": "6386095475518341120",
  "region": "us-central1",
  "parent": "projects/165434197229/locations/us-central1/indexes/",
  "description": "value_description",
  "display_name": "test-index",
  "metadata_schema_uri": "value_metadataschemauri",
  "index_update_method": "value_indexupdatemethod",
  "update_time": "value_updatetime",
  "create_time": "value_createtime",
  "etag": "value_etag"
}, description: 'index description')
control 'google_vertex_ai_index-1.0' do
  impact 1.0
  title 'google_vertex_ai_index resource test'

  describe google_vertex_ai_index(name: "projects/#{gcp_project_id}/locations/#{index['region']}/indexes/#{index['name']}", region: index['region']) do
  	it { should exist }
  	its('description') { should cmp index['description'] }
  	its('name') { should cmp index['name'] }
  	its('display_name') { should cmp index['display_name'] }
  	its('metadata_schema_uri') { should cmp index['metadata_schema_uri'] }
  	its('index_update_method') { should cmp index['index_update_method'] }
  	its('update_time') { should cmp index['update_time'] }
  	its('create_time') { should cmp index['create_time'] }
  	its('etag') { should cmp index['etag'] }

  end

  describe google_vertex_ai_index(name: "does_not_exit", region: index['region']) do
  	it { should_not exist }
  end
end