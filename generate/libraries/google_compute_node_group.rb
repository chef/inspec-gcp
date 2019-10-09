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
class ComputeNodeGroup < GcpResourceBase
  name 'google_compute_node_group'
  desc 'NodeGroup'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :name
  attr_reader :node_template
  attr_reader :size
  attr_reader :zone

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @description = @fetched['description']
    @name = @fetched['name']
    @node_template = @fetched['nodeTemplate']
    @size = @fetched['size']
    @zone = @fetched['zone']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "NodeGroup #{@params[:name]}"
  end

  def un_parse
    {
      'creation_timestamp' => ->(x, path) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'description' => ->(x, path) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'node_template' => ->(x, path) { x.nil? ? [] : ["its('node_template') { should cmp #{x.inspect} }"] },
      'size' => ->(x, path) { x.nil? ? [] : ["its('size') { should cmp #{x.inspect} }"] },
      'zone' => ->(x, path) { x.nil? ? [] : ["its('zone') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'NodeGroup'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_compute_node_group',
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
    'projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}'
  end
end
