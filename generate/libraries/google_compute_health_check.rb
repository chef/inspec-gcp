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
require 'google/compute/property/healthcheck_http2_health_check'
require 'google/compute/property/healthcheck_http_health_check'
require 'google/compute/property/healthcheck_https_health_check'
require 'google/compute/property/healthcheck_ssl_health_check'
require 'google/compute/property/healthcheck_tcp_health_check'

# A provider to manage Compute Engine resources.
class ComputeHealthCheck < GcpResourceBase
  name 'google_compute_health_check'
  desc 'HealthCheck'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :check_interval_sec
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :healthy_threshold
  attr_reader :id
  attr_reader :name
  attr_reader :timeout_sec
  attr_reader :unhealthy_threshold
  attr_reader :type
  attr_reader :http_health_check
  attr_reader :https_health_check
  attr_reader :tcp_health_check
  attr_reader :ssl_health_check
  attr_reader :http2_health_check

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @check_interval_sec = @fetched['checkIntervalSec']
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @description = @fetched['description']
    @healthy_threshold = @fetched['healthyThreshold']
    @id = @fetched['id']
    @name = @fetched['name']
    @timeout_sec = @fetched['timeoutSec']
    @unhealthy_threshold = @fetched['unhealthyThreshold']
    @type = @fetched['type']
    @http_health_check = GoogleInSpec::Compute::Property::HealthCheckHttpHealthCheck.new(@fetched['httpHealthCheck'], to_s)
    @https_health_check = GoogleInSpec::Compute::Property::HealthCheckHttpsHealthCheck.new(@fetched['httpsHealthCheck'], to_s)
    @tcp_health_check = GoogleInSpec::Compute::Property::HealthCheckTcpHealthCheck.new(@fetched['tcpHealthCheck'], to_s)
    @ssl_health_check = GoogleInSpec::Compute::Property::HealthCheckSslHealthCheck.new(@fetched['sslHealthCheck'], to_s)
    @http2_health_check = GoogleInSpec::Compute::Property::HealthCheckHttp2HealthCheck.new(@fetched['http2HealthCheck'], to_s)
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "HealthCheck #{@params[:name]}"
  end

  def un_parse
    {
      'check_interval_sec' => ->(x, _) { x.nil? ? [] : ["its('check_interval_sec') { should cmp #{x.inspect} }"] },
      'creation_timestamp' => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'description' => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'healthy_threshold' => ->(x, _) { x.nil? ? [] : ["its('healthy_threshold') { should cmp #{x.inspect} }"] },
      'id' => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'name' => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'timeout_sec' => ->(x, _) { x.nil? ? [] : ["its('timeout_sec') { should cmp #{x.inspect} }"] },
      'unhealthy_threshold' => ->(x, _) { x.nil? ? [] : ["its('unhealthy_threshold') { should cmp #{x.inspect} }"] },
      'type' => ->(x, _) { x.nil? ? [] : ["its('type') { should cmp #{x.inspect} }"] },
      'http_health_check' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::HealthCheckHttpHealthCheck.un_parse(x, 'http_health_check') },
      'https_health_check' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::HealthCheckHttpsHealthCheck.un_parse(x, 'https_health_check') },
      'tcp_health_check' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::HealthCheckTcpHealthCheck.un_parse(x, 'tcp_health_check') },
      'ssl_health_check' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::HealthCheckSslHealthCheck.un_parse(x, 'ssl_health_check') },
      'http2_health_check' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::HealthCheckHttp2HealthCheck.un_parse(x, 'http2_health_check') },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = 'HealthCheck'

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name:,
      arr:,
      type: 'google_compute_health_check',
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/healthChecks/{{name}}'
  end
end
