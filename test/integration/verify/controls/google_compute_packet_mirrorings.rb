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

title 'Test GCP google_compute_packet_mirrorings resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  packet_mirroring = input('packet_mirroring', value: {
  "packet_mirroring": "value_packetmirroring",
  "project": "value_project",
  "region": "value_region",
  "kind": "value_kind",
  "id": "value_id",
  "creation_timestamp": "value_creationtimestamp",
  "self_link": "value_selflink",
  "self_link_with_id": "value_selflinkwithid",
  "name": "value_name",
  "description": "value_description",
  "enable": "value_enable"
}, description: 'packet_mirroring description')
control 'google_compute_packet_mirrorings-1.0' do
  impact 1.0
  title 'google_compute_packet_mirrorings resource test'

      describe google_compute_packet_mirrorings(project: gcp_project_id, region: packet_mirroring['region']) do
      it { should exist }
    end
end
