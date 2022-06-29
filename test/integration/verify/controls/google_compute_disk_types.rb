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

title 'Test GCP google_compute_disk_types resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
disk_type = input('disk_type', value: null, description: 'The accelerator type')
control 'google_compute_disk_types-1.0' do
  impact 1.0
  title 'google_compute_disk_types resource test'

  describe google_compute_disk_types(project: gcp_project_id, zone: 'us-east1-b') do
  it { should exist }
  it { should be_up }
  end
end
