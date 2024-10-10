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

title 'Test GCP google_data_fusion_instances resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  instance = input('instance', value: {
  "name": "projects/ppradhan/locations/us-central1/instances/inspec-instance",
	"parent": "projects/ppradhan/locations/us-central1",
	"type": "DEVELOPER",
	"state": "ACTIVE",
	"create_time": "2024-10-09T12:34:49.544484250Z",
	"update_time": "2024-10-09T12:53:56.928042766Z",
  "version": "6.10.1",
  "service_account": "cloud-datafusion-management-sa@b0ed40f9567706323-tp.iam.gserviceaccount.com",
  "p4_service_account": "service-165434197229@gcp-sa-datafusion.iam.gserviceaccount.com",
	"serviceEndpoint": "https://inspec-instance-ppradhan-dot-usc1.datafusion.googleusercontent.com",
	"zone": "us-central1-c",
	"api_endpoint": "https://inspec-instance-ppradhan-dot-usc1.datafusion.googleusercontent.com/api",
	"gcs_bucket": "gs://df-1770363587862806578-7atlcp4ghmi67nkzaizbbqaaaa",
	"tenant_project_id": "b0ed40f9567706323-tp",
	"workforce_identity_service_endpoint": "https://inspec-instance-ppradhan-dot-usc1.datafusion.byoid.googleusercontent.com.",
	"patch_revision": "6.10.1.1"
}, description: 'instance description')
control 'google_data_fusion_instances-1.0' do
  impact 1.0
  title 'google_data_fusion_instances resource test'

    describe google_data_fusion_instances(parent: instance['parent']) do
      it { should exist }
    end
end
