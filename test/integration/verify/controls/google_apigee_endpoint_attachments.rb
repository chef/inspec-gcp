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

title 'Test GCP google_apigee_endpoint_attachments resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  endpoint_attachment = input('endpoint_attachment', value: {
  "name": "organizations/ppradhan/endpointAttachments/inspec-test-attachment",
  "parent": "organizations/ppradhan",
  "host": "7.0.0.2",
  "connection_state": "ACCEPTED",
  "service_attachment": "projects/ppradhan/regions/us-central1/serviceAttachments/my-psc-ilb",
  "location": "us-central1",
  "state": "ACTIVE"
}, description: 'endpoint_attachment description')
control 'google_apigee_endpoint_attachments-1.0' do
  impact 1.0
  title 'google_apigee_endpoint_attachments resource test'

    describe google_apigee_endpoint_attachments() do
      it { should exist }
      its('hosts') { should include endpoint_attachment['host'] }
      its('connection_states') { should include endpoint_attachment['connection_state'] }
      its('service_attachments') { should include endpoint_attachment['service_attachment'] }
      its('locations') { should include endpoint_attachment['location'] }
      its('names') { should include endpoint_attachment['name'] }
      its('states') { should include endpoint_attachment['state'] }
    end
end