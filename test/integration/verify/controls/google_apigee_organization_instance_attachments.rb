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

title 'Test GCP google_apigee_organization_instance_attachments resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  organization_instance_attachment = input('organization_instance_attachment', value: {
  "name": "c4452279-f4dd-473c-b50d-de21bec8147b",
  "parent": "organizations/ppradhan/instances/us-central1",
  "environment": "inspec-test-env",
  "created_at": "1728297911815"
}, description: 'organization_instance_attachment description')
control 'google_apigee_organization_instance_attachments-1.0' do
  impact 1.0
  title 'google_apigee_organization_instance_attachments resource test'

    describe google_apigee_organization_instance_attachments(parent: organization_instance_attachment['parent']) do
      it { should exist }
      its('name') { should include organization_instance_attachment['name'] }
      its('environment') { should include organization_instance_attachment['environment'] }
      its('created_at') { should include organization_instance_attachment['created_at'] }
    end
end
