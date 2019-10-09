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

# A provider to manage Compute Engine resources.
class ComputeGlobalAddress < GcpResourceBase
  name 'google_compute_global_address'
  desc 'GlobalAddress'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :address
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :id
  attr_reader :name
  attr_reader :ip_version
  attr_reader :region
  attr_reader :prefix_length
  attr_reader :address_type
  attr_reader :purpose
  attr_reader :network

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @address = @fetched['address']
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @description = @fetched['description']
    @id = @fetched['id']
    @name = @fetched['name']
    @ip_version = @fetched['ipVersion']
    @region = @fetched['region']
    @prefix_length = @fetched['prefixLength']
    @address_type = @fetched['addressType']
    @purpose = @fetched['purpose']
    @network = @fetched['network']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "GlobalAddress #{@params[:name]}"
  end

  def un_parse
    {
      'address' => ->(x, path) { x.nil? ? [] : ["its('address') { should cmp #{x.inspect} }"] },
      'creation_timestamp' => ->(x, path) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'description' => ->(x, path) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'id' => ->(x, path) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'ip_version' => ->(x, path) { x.nil? ? [] : ["its('ip_version') { should cmp #{x.inspect} }"] },
      'region' => ->(x, path) { x.nil? ? [] : ["its('region') { should cmp #{x.inspect} }"] },
      'prefix_length' => ->(x, path) { x.nil? ? [] : ["its('prefix_length') { should cmp #{x.inspect} }"] },
      'address_type' => ->(x, path) { x.nil? ? [] : ["its('address_type') { should cmp #{x.inspect} }"] },
      'purpose' => ->(x, path) { x.nil? ? [] : ["its('purpose') { should cmp #{x.inspect} }"] },
      'network' => ->(x, path) { x.nil? ? [] : ["its('network') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'GlobalAddress'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_compute_global_address',
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
    'projects/{{project}}/global/addresses/{{name}}'
  end
end
