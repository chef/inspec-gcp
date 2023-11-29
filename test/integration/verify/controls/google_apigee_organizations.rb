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
control 'google_apigee_organizations-1.0' do
  impact 1.0
  title 'google_apigee_organizations resource test'

      describe google_apigee_organizations(parent: organization['parent']) do
      it { should exist }
    end
end