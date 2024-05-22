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

title 'Test GCP google_compute_service_attachments resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

service_attachment = input('service_attachment', value: {
  "project": "ppradhan",
  "region": "us-central1",
  "service_attachment": "my-psc-ilb",
  "kind": "compute#serviceAttachment",
  "name": "my-psc-ilb",
  "description": "my-psc-ilb is a private service connection for the internal load balancer",
  "self_link": "https://www.googleapis.com/compute/v1/projects/ppradhan/regions/us-central1/serviceAttachments/my-psc-ilb",
  "target_service": "https://www.googleapis.com/compute/v1/projects/ppradhan/regions/us-central1/forwardingRules/producer-forwarding-rule",
  "connection_preference": "ACCEPT_AUTOMATIC",
}, description: 'service_attachment description')

control 'google_compute_service_attachments-1.0' do
  impact 1.0
  title 'google_compute_service_attachments resource test'

  describe google_compute_service_attachments(project: gcp_project_id, region: service_attachment['region']) do
    it { should exist }
    its("names") { should include service_attachment['name'] }
    its("self_links") { should include service_attachment['self_link'] }
    its("kinds") { should include service_attachment['kind'] }
    its("descriptions") { should include service_attachment['description'] }
    its("target_services") { should include service_attachment['target_service'] }
    its("connection_preferences") { should include service_attachment['connection_preference'] }
  end

  describe google_compute_service_attachments(project: gcp_project_id, region: "us-west2") do
    it { should_not exist }
  end
end
