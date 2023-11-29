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

title 'Test GCP google_apigee_organization resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')

  organization = input('organization', value: {
  "name": "value_name",
  "parent": "value_parent",
  "api_consumer_data_encryption_key_name": "value_apiconsumerdataencryptionkeyname",
  "runtime_database_encryption_key_name": "value_runtimedatabaseencryptionkeyname",
  "runtime_type": "value_runtimetype",
  "type": "value_type",
  "authorized_network": "value_authorizednetwork",
  "project_id": "value_projectid",
  "description": "value_description",
  "ca_certificate": "value_cacertificate",
  "subscription_type": "value_subscriptiontype",
  "customer_name": "value_customername",
  "created_at": "value_createdat",
  "last_modified_at": "value_lastmodifiedat",
  "subscription_plan": "value_subscriptionplan",
  "state": "value_state",
  "control_plane_encryption_key_name": "value_controlplaneencryptionkeyname",
  "analytics_region": "value_analyticsregion",
  "api_consumer_data_location": "value_apiconsumerdatalocation",
  "display_name": "value_displayname",
  "apigee_project_id": "value_apigeeprojectid",
  "expires_at": "value_expiresat",
  "billing_type": "value_billingtype"
}, description: 'organization description')
control 'google_apigee_organization-1.0' do
  impact 1.0
  title 'google_apigee_organization resource test'

  describe google_apigee_organization(name: organization['name']) do
  	it { should exist }
  	its('api_consumer_data_encryption_key_name') { should cmp organization['api_consumer_data_encryption_key_name'] }
  	its('runtime_database_encryption_key_name') { should cmp organization['runtime_database_encryption_key_name'] }
  	its('runtime_type') { should cmp organization['runtime_type'] }
  	its('type') { should cmp organization['type'] }
  	its('authorized_network') { should cmp organization['authorized_network'] }
  	its('project_id') { should cmp organization['project_id'] }
  	its('description') { should cmp organization['description'] }
  	its('ca_certificate') { should cmp organization['ca_certificate'] }
  	its('subscription_type') { should cmp organization['subscription_type'] }
  	its('customer_name') { should cmp organization['customer_name'] }
  	its('created_at') { should cmp organization['created_at'] }
  	its('last_modified_at') { should cmp organization['last_modified_at'] }
  	its('subscription_plan') { should cmp organization['subscription_plan'] }
  	its('state') { should cmp organization['state'] }
  	its('name') { should cmp organization['name'] }
  	its('control_plane_encryption_key_name') { should cmp organization['control_plane_encryption_key_name'] }
  	its('analytics_region') { should cmp organization['analytics_region'] }
  	its('api_consumer_data_location') { should cmp organization['api_consumer_data_location'] }
  	its('display_name') { should cmp organization['display_name'] }
  	its('apigee_project_id') { should cmp organization['apigee_project_id'] }
  	its('expires_at') { should cmp organization['expires_at'] }
  	its('billing_type') { should cmp organization['billing_type'] }

  end

  describe google_apigee_organization(name: "does_not_exit") do
  	it { should_not exist }
  end
end
