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

# A provider to manage Cloud Runtime Configuration resources.
class RuntimeConfigVariable < GcpResourceBase
  name 'google_runtime_config_variable'
  desc 'Variable'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :value
  attr_reader :text
  attr_reader :name
  attr_reader :config

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @value = @fetched['value']
    @text = @fetched['text']
    @name = @fetched['name']
    @config = @fetched['config']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Variable #{@params[:name]}"
  end

  def un_parse
    {
      'value' => ->(x, path) { x.nil? ? [] : ["its('value') { should cmp #{x.inspect} }"] },
      'text' => ->(x, path) { x.nil? ? [] : ["its('text') { should cmp #{x.inspect} }"] },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'config' => ->(x, path) { x.nil? ? [] : ["its('config') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'Variable'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_runtime_config_variable',
      identifiers: @params,
      number: i
    }
    File.open("#{path}/#{name}_#{i}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(my_map))
    end


  end


  private

  def product_url
    'https://runtimeconfig.googleapis.com/v1beta1/'
  end

  def resource_base_url
    'projects/{{project}}/configs/{{config}}/variables/{{name}}'
  end
end
