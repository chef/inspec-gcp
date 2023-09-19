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

title 'Test GCP google_vertex_ai_metadata_stores_artifact resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  metadata_stores_artifact = input('metadata_stores_artifact', value: {
  "name": "value_name",
  "region": "value_region",
  "parent": "value_parent",
  "schema_version": "value_schemaversion",
  "display_name": "value_displayname",
  "etag": "value_etag",
  "update_time": "value_updatetime",
  "state": "value_state",
  "uri": "value_uri",
  "create_time": "value_createtime",
  "schema_title": "value_schematitle",
  "description": "value_description"
}, description: 'metadata_stores_artifact description')
control 'google_vertex_ai_metadata_stores_artifact-1.0' do
  impact 1.0
  title 'google_vertex_ai_metadata_stores_artifact resource test'

  describe google_vertex_ai_metadata_stores_artifact(name: "projects/#{gcp_project_id}/locations/#{metadata_stores_artifact['region']}/metadataStores/#{metadata_stores_artifact['metadataStore']}/artifacts/#{metadata_stores_artifact['name']}", region: metadata_stores_artifact['region']) do
  	it { should exist }
  	its('schema_version') { should cmp metadata_stores_artifact['schema_version'] }
  	its('display_name') { should cmp metadata_stores_artifact['display_name'] }
  	its('etag') { should cmp metadata_stores_artifact['etag'] }
  	its('name') { should cmp metadata_stores_artifact['name'] }
  	its('update_time') { should cmp metadata_stores_artifact['update_time'] }
  	its('state') { should cmp metadata_stores_artifact['state'] }
  	its('uri') { should cmp metadata_stores_artifact['uri'] }
  	its('create_time') { should cmp metadata_stores_artifact['create_time'] }
  	its('schema_title') { should cmp metadata_stores_artifact['schema_title'] }
  	its('description') { should cmp metadata_stores_artifact['description'] }

  end

  describe google_vertex_ai_metadata_stores_artifact(name: "does_not_exit", region: metadata_stores_artifact['region']) do
  	it { should_not exist }
  end
end
