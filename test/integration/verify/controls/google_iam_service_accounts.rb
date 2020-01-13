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

title 'Test GCP google_iam_service_accounts resource.'

gcp_project_id = attribute(:gcp_project_id, default: 'gcp_project_id', description: 'The GCP project identifier.')
gcp_service_account_display_name = attribute(:gcp_service_account_display_name, default: 'gcp_service_account_display_name', description: 'The IAM service account display name.')
gcp_enable_privileged_resources = attribute(:gcp_enable_privileged_resources, default:0, description:'Flag to enable privileged resources requiring elevated privileges in GCP.')
control 'google_iam_service_accounts-1.0' do
  impact 1.0
  title 'google_iam_service_accounts resource test'

  only_if { gcp_enable_privileged_resources.to_i == 1 }
  describe google_iam_service_accounts(project: gcp_project_id, name: "#{gcp_service_account_display_name}@#{gcp_project_id}.iam.gserviceaccount.com") do
    its('service_account_emails') { should include "#{gcp_service_account_display_name}@#{gcp_project_id}.iam.gserviceaccount.com" }
    its('count') { should be <= 1000 }
  end
end
