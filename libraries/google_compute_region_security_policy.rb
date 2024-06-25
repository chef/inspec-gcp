# frozen_string_literal: false

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
require 'gcp_backend'
require 'google/compute/property/regionsecuritypolicy_adaptive_protection_config'
require 'google/compute/property/regionsecuritypolicy_adaptive_protection_config_auto_deploy_config'
require 'google/compute/property/regionsecuritypolicy_adaptive_protection_config_layer7_ddos_defense_config'
require 'google/compute/property/regionsecuritypolicy_adaptive_protection_config_layer7_ddos_defense_config_threshold_configs'
require 'google/compute/property/regionsecuritypolicy_advanced_options_config'
require 'google/compute/property/regionsecuritypolicy_advanced_options_config_json_custom_config'
require 'google/compute/property/regionsecuritypolicy_associations'
require 'google/compute/property/regionsecuritypolicy_cloud_armor_config'
require 'google/compute/property/regionsecuritypolicy_ddos_protection_config'
require 'google/compute/property/regionsecuritypolicy_labels'
require 'google/compute/property/regionsecuritypolicy_recaptcha_options_config'
require 'google/compute/property/regionsecuritypolicy_rules'
require 'google/compute/property/regionsecuritypolicy_user_defined_fields'

# A provider to manage Compute Engine resources.
class ComputeRegionSecurityPolicy < GcpResourceBase
  name 'google_compute_region_security_policy'
  desc 'RegionSecurityPolicy'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :user_defined_fields
  attr_reader :kind
  attr_reader :id
  attr_reader :creation_timestamp
  attr_reader :name
  attr_reader :description
  attr_reader :rules
  attr_reader :cloud_armor_config
  attr_reader :adaptive_protection_config
  attr_reader :ddos_protection_config
  attr_reader :advanced_options_config
  attr_reader :recaptcha_options_config
  attr_reader :fingerprint
  attr_reader :self_link
  attr_reader :self_link_with_id
  attr_reader :type
  attr_reader :associations
  attr_reader :labels
  attr_reader :label_fingerprint
  attr_reader :rule_tuple_count
  attr_reader :display_name
  attr_reader :parent
  attr_reader :region

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @user_defined_fields = GoogleInSpec::Compute::Property::RegionSecurityPolicyUserDefinedFieldsArray.parse(@fetched['userDefinedFields'], to_s)
    @kind = @fetched['kind']
    @id = @fetched['id']
    @creation_timestamp = @fetched['creationTimestamp']
    @name = @fetched['name']
    @description = @fetched['description']
    @rules = GoogleInSpec::Compute::Property::RegionSecurityPolicyRulesArray.parse(@fetched['rules'], to_s)
    @cloud_armor_config = GoogleInSpec::Compute::Property::RegionSecurityPolicyCloudArmorConfig.new(@fetched['cloudArmorConfig'], to_s)
    @adaptive_protection_config = GoogleInSpec::Compute::Property::RegionSecurityPolicyAdaptiveProtectionConfig.new(@fetched['adaptiveProtectionConfig'], to_s)
    @ddos_protection_config = GoogleInSpec::Compute::Property::RegionSecurityPolicyDdosProtectionConfig.new(@fetched['ddosProtectionConfig'], to_s)
    @advanced_options_config = GoogleInSpec::Compute::Property::RegionSecurityPolicyAdvancedOptionsConfig.new(@fetched['advancedOptionsConfig'], to_s)
    @recaptcha_options_config = GoogleInSpec::Compute::Property::RegionSecurityPolicyRecaptchaOptionsConfig.new(@fetched['recaptchaOptionsConfig'], to_s)
    @fingerprint = @fetched['fingerprint']
    @self_link = @fetched['selfLink']
    @self_link_with_id = @fetched['selfLinkWithId']
    @type = @fetched['type']
    @associations = GoogleInSpec::Compute::Property::RegionSecurityPolicyAssociationsArray.parse(@fetched['associations'], to_s)
    @labels = GoogleInSpec::Compute::Property::RegionSecurityPolicyLabels.new(@fetched['labels'], to_s)
    @label_fingerprint = @fetched['labelFingerprint']
    @rule_tuple_count = @fetched['ruleTupleCount']
    @display_name = @fetched['displayName']
    @parent = @fetched['parent']
    @region = @fetched['region']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "RegionSecurityPolicy #{@params[:securityPolicy]}"
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/securityPolicies/{{security_policy}}'
  end
end
