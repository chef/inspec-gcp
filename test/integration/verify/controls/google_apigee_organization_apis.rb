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

title 'Test GCP google_apigee_organization_apis resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  organization_api = input('organization_api', value: {
  "name": "firstproxy",
  "parent": "organizations/ppradhan",
  "latest_revision_id": "value_latestrevisionid",
  "api_proxy_type": "PROGRAMMABLE"
}, description: 'organization_api description')
control 'google_apigee_organization_apis-1.0' do
  impact 1.0
  title 'google_apigee_organization_apis resource test'

    describe google_apigee_organization_apis(parent: organization_api['parent']) do
      it { should exist }
    end
end
