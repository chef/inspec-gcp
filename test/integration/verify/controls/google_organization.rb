title 'Test GCP Organization'

gcp_organization_id = attribute(:gcp_organization_id, default: '', description: 'The GCP organization identifier.')
gcp_organization_display_name = attribute(:gcp_organization_display_name, default: '', description: 'The GCP organization display name.')
gcp_enable_privileged_resources = attribute(:gcp_enable_privileged_resources,default:0,description:'Flag to enable privileged resources requiring elevated privileges in GCP.')

control 'gcp-organization-1.0' do

  only_if { gcp_enable_privileged_resources.to_i == 1 }
  impact 1.0
  title 'Ensure organization has the correct properties.'

  describe google_organization(name: "organizations/#{gcp_organization_id}") do
    it { should exist }
    its('name') { should eq "organizations/#{gcp_organization_id}" }
    its('display_name') { should eq gcp_organization_display_name }
    its('lifecycle_state') { should include 'ACTIVE' }
  end
end