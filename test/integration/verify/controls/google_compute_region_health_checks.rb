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

title 'Test GCP google_compute_region_health_checks resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
region_health_check = input(:region_health_check, value: {
  "name": "inspec-gcp-region-health-check",
  "region": "us-central1",
  "timeout_sec": 10,
  "check_interval_sec": 10,
  "tcp_health_check_port": 80
}, description: 'The GCP project region health check')

gcp_compute_health_check_name = region_health_check["name"]
gcp_compute_health_check_region_name = region_health_check["region"]
control 'google_compute_region_health_checks-1.0' do
  impact 1.0
  title 'google_compute_region_health_checks resource test'


  describe google_compute_region_health_checks(project: gcp_project_id, region: gcp_compute_health_check_region_name) do
    its('types') { should include "TCP" }
  end
end