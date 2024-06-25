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

title 'Test GCP google_apigee_organizations resource.'

organization = input('organization', value: {
  "parent": "organizations",
  "project_id": "ppradhan",
}, description: 'organization description')

control 'google_apigee_organizations-1.0' do
  impact 1.0
  title 'google_apigee_organizations resource test'

    describe google_apigee_organizations(parent: organization["parent"]) do
      it { should exist }
      its("project_ids") { should include "#{organization["project_id"]}" }
    end
end
