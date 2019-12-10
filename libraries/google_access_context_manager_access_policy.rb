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

# A provider to manage Access Context Manager resources.
class AccessContextManagerAccessPolicy < GcpResourceBase
  name 'google_access_context_manager_access_policy'
  desc 'AccessPolicy'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :name
  attr_reader :create_time
  attr_reader :update_time
  attr_reader :parent
  attr_reader :title

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = name_from_self_link(@fetched['name'])
    @create_time = parse_time_string(@fetched['createTime'])
    @update_time = parse_time_string(@fetched['updateTime'])
    @parent = @fetched['parent']
    @title = @fetched['title']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "AccessPolicy #{@params[:name]}"
  end

  private

  def product_url
    'https://accesscontextmanager.googleapis.com/v1/'
  end

  def resource_base_url
    'accessPolicies/{{name}}'
  end
end
