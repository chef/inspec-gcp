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
require 'google/compute/property/regionnotificationendpoint_grpc_settings'
require 'google/compute/property/regionnotificationendpoint_grpc_settings_resend_interval'

# A provider to manage Compute Engine resources.
class ComputeRegionNotificationEndpoint < GcpResourceBase
  name 'google_compute_region_notification_endpoint'
  desc 'RegionNotificationEndpoint'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :kind
  attr_reader :id
  attr_reader :creation_timestamp
  attr_reader :name
  attr_reader :description
  attr_reader :self_link
  attr_reader :region
  attr_reader :grpc_settings

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @kind = @fetched['kind']
    @id = @fetched['id']
    @creation_timestamp = @fetched['creationTimestamp']
    @name = @fetched['name']
    @description = @fetched['description']
    @self_link = @fetched['selfLink']
    @region = @fetched['region']
    @grpc_settings = GoogleInSpec::Compute::Property::RegionNotificationEndpointGrpcSettings.new(@fetched['grpcSettings'], to_s)
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "RegionNotificationEndpoint #{@params[:notificationEndpoint]}"
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/notificationEndpoints/{{notification_endpoint}}'
  end
end
