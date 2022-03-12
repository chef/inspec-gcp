title 'Test GCP google_project_iam_custom_roles resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
gcp_project_iam_custom_role_id = input(:gcp_project_iam_custom_role_id, value: 'gcp_project_iam_custom_role_id', description: 'The IAM custom role identifier.')
gcp_enable_privileged_resources = input(:gcp_enable_privileged_resources, value: 0, description: 'Flag to enable privileged resources requiring elevated privileges in GCP.')
gcp_organization_id = vainputlue(:gcp_organization_id, value: '', description: 'The identifier of the organization')

control 'google_project_iam_custom_roles-1.0' do
  impact 1.0
  title 'google_project_iam_custom_roles resource test'

  only_if { gcp_enable_privileged_resources.to_i == 1 && gcp_organization_id != '' }
  describe google_project_iam_custom_roles(project: gcp_project_id) do
    its('names') { should include "projects/#{gcp_project_id}/roles/#{gcp_project_iam_custom_role_id}" }
  end
end
