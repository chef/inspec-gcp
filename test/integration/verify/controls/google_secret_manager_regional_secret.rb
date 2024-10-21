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

title 'Test GCP google_secret_manager_regional_secret resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

project_secret = input('project_secret', value: {
  "name": "test_secret",
  "region": "us-central1"
}, description: 'project_secret description')
control 'google_secret_manager_regional_secret-1.0' do
  impact 1.0
  title 'google_secret_manager_regional_secret resource test'

  describe google_secret_manager_regional_secret(name: "projects/#{gcp_project_id}/locations/#{project_secret['region']}/secrets/#{project_secret['name']}", region: project_secret['region']) do
  	it { should exist }
  end

  describe google_secret_manager_regional_secret(name: "does_not_exit", region: project_secret['region']) do
  	it { should_not exist }
  end
end
