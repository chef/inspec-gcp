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
require 'google/compute/property/region_deprecated'
require 'google/compute/property/region_quotas'

# A provider to manage Compute Engine resources.
class Region < GcpResourceBase
  name 'google_compute_region'
  desc 'Region'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :creation_timestamp
  attr_reader :deprecated
  attr_reader :description
  attr_reader :id
  attr_reader :name
  attr_reader :quotas
  attr_reader :status
  attr_reader :zones

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @deprecated = GoogleInSpec::Compute::Property::RegionDeprecated.new(@fetched['deprecated'], to_s)
    @description = @fetched['description']
    @id = @fetched['id']
    @name = @fetched['name']
    @quotas = GoogleInSpec::Compute::Property::RegionQuotasArray.parse(@fetched['quotas'], to_s)
    @status = @fetched['status']
    @zones = @fetched['zones']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Region #{@params[:name]}"
  end

  # helper for returning a list of zone short names rather than fully qualified URLs e.g.
  #   https://www.googleapis.com/compute/v1/projects/spaterson-project/zones/asia-east1-a
  def zone_names
    return [] if !exists?
    @zones.map { |zone| zone.split('/').last }
  end

  def up?
    return false if !exists?
    @status == 'UP'
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{name}}'
  end
end
