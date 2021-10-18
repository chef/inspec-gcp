# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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
require 'google/compute/property/securitypolicy_rules'

# A provider to manage Compute Engine resources.
class ComputeSecurityPolicy < GcpResourceBase
  name 'google_compute_security_policy'
  desc 'SecurityPolicy'
  supports platform: 'gcp'

  attr_reader :params, :name, :id, :rules

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = @fetched['name']
    @id = @fetched['id']
    @rules = GoogleInSpec::Compute::Property::SecurityPolicyRulesArray.parse(@fetched['rules'], to_s)
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "SecurityPolicy #{@params[:name]}"
  end

  private

  def product_url(beta = false)
    if beta
      'https://compute.googleapis.com/compute/beta/'
    else
      'https://compute.googleapis.com/compute/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/global/securityPolicies/{{name}}'
  end
end
