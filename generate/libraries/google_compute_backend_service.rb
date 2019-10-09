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
require 'google/compute/property/backendservice_backends'
require 'google/compute/property/backendservice_cdn_policy'
require 'google/compute/property/backendservice_cdn_policy_cache_key_policy'
require 'google/compute/property/backendservice_connection_draining'
require 'google/compute/property/backendservice_iap'

# A provider to manage Compute Engine resources.
class ComputeBackendService < GcpResourceBase
  name 'google_compute_backend_service'
  desc 'BackendService'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :affinity_cookie_ttl_sec
  attr_reader :backends
  attr_reader :cdn_policy
  attr_reader :connection_draining
  attr_reader :creation_timestamp
  attr_reader :fingerprint
  attr_reader :description
  attr_reader :enable_cdn
  attr_reader :health_checks
  attr_reader :id
  attr_reader :iap
  attr_reader :load_balancing_scheme
  attr_reader :name
  attr_reader :port_name
  attr_reader :protocol
  attr_reader :security_policy
  attr_reader :session_affinity
  attr_reader :timeout_sec

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @affinity_cookie_ttl_sec = @fetched['affinityCookieTtlSec']
    @backends = GoogleInSpec::Compute::Property::BackendServiceBackendsArray.parse(@fetched['backends'], to_s)
    @cdn_policy = GoogleInSpec::Compute::Property::BackendServiceCdnPolicy.new(@fetched['cdnPolicy'], to_s)
    @connection_draining = GoogleInSpec::Compute::Property::BackendServiceConnectionDraining.new(@fetched['connectionDraining'], to_s)
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @fingerprint = @fetched['fingerprint']
    @description = @fetched['description']
    @enable_cdn = @fetched['enableCDN']
    @health_checks = @fetched['healthChecks']
    @id = @fetched['id']
    @iap = GoogleInSpec::Compute::Property::BackendServiceIap.new(@fetched['iap'], to_s)
    @load_balancing_scheme = @fetched['loadBalancingScheme']
    @name = @fetched['name']
    @port_name = @fetched['portName']
    @protocol = @fetched['protocol']
    @security_policy = @fetched['securityPolicy']
    @session_affinity = @fetched['sessionAffinity']
    @timeout_sec = @fetched['timeoutSec']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "BackendService #{@params[:name]}"
  end

  def un_parse
    {
      'affinity_cookie_ttl_sec' => ->(x, path) { x.nil? ? [] : ["its('affinity_cookie_ttl_sec') { should cmp #{x.inspect} }"] },
      'backends' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('backends') { should include '#{single.to_json}' }" } },
      'cdn_policy' => ->(x, path) { x.nil? ? [] : GoogleInSpec::Compute::Property::BackendServiceCdnPolicy.un_parse(x, "cdn_policy") },
      'connection_draining' => ->(x, path) { x.nil? ? [] : GoogleInSpec::Compute::Property::BackendServiceConnectionDraining.un_parse(x, "connection_draining") },
      'creation_timestamp' => ->(x, path) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'fingerprint' => ->(x, path) { x.nil? ? [] : ["its('fingerprint') { should cmp #{x.inspect} }"] },
      'description' => ->(x, path) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'enable_cdn' => ->(x, path) { x.nil? ? [] : ["its('enable_cdn') { should cmp #{x.inspect} }"] },
      'health_checks' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('health_checks') { should include #{single.inspect} }" } },
      'id' => ->(x, path) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'iap' => ->(x, path) { x.nil? ? [] : GoogleInSpec::Compute::Property::BackendServiceIap.un_parse(x, "iap") },
      'load_balancing_scheme' => ->(x, path) { x.nil? ? [] : ["its('load_balancing_scheme') { should cmp #{x.inspect} }"] },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'port_name' => ->(x, path) { x.nil? ? [] : ["its('port_name') { should cmp #{x.inspect} }"] },
      'protocol' => ->(x, path) { x.nil? ? [] : ["its('protocol') { should cmp #{x.inspect} }"] },
      'security_policy' => ->(x, path) { x.nil? ? [] : ["its('security_policy') { should cmp #{x.inspect} }"] },
      'session_affinity' => ->(x, path) { x.nil? ? [] : ["its('session_affinity') { should cmp #{x.inspect} }"] },
      'timeout_sec' => ->(x, path) { x.nil? ? [] : ["its('timeout_sec') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'BackendService'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_compute_backend_service',
      identifiers: @params,
      number: i
    }
    File.open("#{path}/#{name}_#{i}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(my_map))
    end


  end


  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/backendServices/{{name}}'
  end
end
