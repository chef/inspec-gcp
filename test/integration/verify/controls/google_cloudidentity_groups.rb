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

title 'Test GCP google_cloudidentity_groups resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
cloudidentity = input('cloudidentity', value: {
  "name": "cloudidentity_group"
}, description: 'The cloudidentity')
control 'google_cloudidentity_groups-1.0' do
  impact 1.0
  title 'google_cloudidentity_groups resource test'

  describe google_cloudidentity_groups(project: gcp_project_id) do
  it { should exist }
  it { should be_up }
  end
end