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
require 'google/compute/property/regiondisktype_deprecated'

# A provider to manage Compute Engine resources.
class ComputeRegionDiskType < GcpResourceBase
  name 'google_compute_region_disk_type'
  desc 'RegionDiskType'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :kind
  attr_reader :id
  attr_reader :creation_timestamp
  attr_reader :name
  attr_reader :description
  attr_reader :valid_disk_size
  attr_reader :deprecated
  attr_reader :zone
  attr_reader :self_link
  attr_reader :default_disk_size_gb
  attr_reader :region

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
    @valid_disk_size = @fetched['validDiskSize']
    @deprecated = GoogleInSpec::Compute::Property::RegionDiskTypeDeprecated.new(@fetched['deprecated'], to_s)
    @zone = @fetched['zone']
    @self_link = @fetched['selfLink']
    @default_disk_size_gb = @fetched['defaultDiskSizeGb']
    @region = @fetched['region']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "RegionDiskType #{@params[:diskType]}"
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/diskTypes/{{disk_type}}'
  end
end
