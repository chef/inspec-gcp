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

title 'Test GCP google_vertex_ai_metadata_stores_context resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  metadata_stores_context = input('metadata_stores_context', value: {
  "name": "autologging-experiment-w0apl7la-autologging-tf-experiment-w0apl7la",
  "region": "us-central1",
  "parent": "projects/165434197229/locations/us-central1/metadataStores/default/contexts/",
  "metadataStore": "default",
  "schema_title": "system.ExperimentRun",
  "etag": "value_etag",
  "description": "value_description",
  "display_name": "autologging-tf-experiment-w0apl7la",
  "schema_version": "value_schemaversion",
  "create_time": "value_createtime",
  "update_time": "value_updatetime"
}, description: 'metadata_stores_context description')
control 'google_vertex_ai_metadata_stores_context-1.0' do
  impact 1.0
  title 'google_vertex_ai_metadata_stores_context resource test'

  describe google_vertex_ai_metadata_stores_context(name: "projects/#{gcp_project_id}/locations/#{metadata_stores_context['region']}/metadataStores/#{metadata_stores_context['metadataStore']}/contexts/#{metadata_stores_context['name']}", region: metadata_stores_context['region']) do
  	it { should exist }
  	its('name') { should cmp metadata_stores_context['name'] }
  	its('schema_title') { should cmp metadata_stores_context['schema_title'] }
  	its('etag') { should cmp metadata_stores_context['etag'] }
  	its('description') { should cmp metadata_stores_context['description'] }
  	its('display_name') { should cmp metadata_stores_context['display_name'] }
  	its('schema_version') { should cmp metadata_stores_context['schema_version'] }
  	its('create_time') { should cmp metadata_stores_context['create_time'] }
  	its('update_time') { should cmp metadata_stores_context['update_time'] }

  end

  describe google_vertex_ai_metadata_stores_context(name: "does_not_exit", region: metadata_stores_context['region']) do
  	it { should_not exist }
  end
end