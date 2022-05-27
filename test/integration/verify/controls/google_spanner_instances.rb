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

title 'Test GCP google_spanner_instances resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
spannerinstance = input('spannerinstance', default: {
  "config": "regional-us-east1",
  "name": "spinstance",
  "display_name": "inspectest",
  "num_nodes": 1,
  "label_key": "env",
  "label_value": "test"
}, description: 'Cloud Spanner definition') 

control 'google_spanner_instances-1.0' do
  impact 1.0
  title 'google_spanner_instances resource test'


  describe.one do
    google_spanner_instances(project: gcp_project_id, config: spannerinstance['config']).configs.each do |config|
      describe config do
        it { should match spannerinstance['config'] }
      end
    end
  end
end
