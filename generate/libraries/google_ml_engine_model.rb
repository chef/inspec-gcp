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
require 'google/mlengine/property/model_default_version'

# A provider to manage ML Engine resources.
class MLEngineModel < GcpResourceBase
  name 'google_ml_engine_model'
  desc 'Model'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :name
  attr_reader :description
  attr_reader :default_version
  attr_reader :regions
  attr_reader :online_prediction_logging
  attr_reader :online_prediction_console_logging
  attr_reader :labels

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @name = @fetched['name']
    @description = @fetched['description']
    @default_version = GoogleInSpec::MLEngine::Property::ModelDefaultVersion.new(@fetched['defaultVersion'], to_s)
    @regions = @fetched['regions']
    @online_prediction_logging = @fetched['onlinePredictionLogging']
    @online_prediction_console_logging = @fetched['onlinePredictionConsoleLogging']
    @labels = @fetched['labels']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Model #{@params[:name]}"
  end

  def un_parse
    {
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'description' => ->(x, path) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'default_version' => ->(x, path) { x.nil? ? [] : GoogleInSpec::MLEngine::Property::ModelDefaultVersion.un_parse(x, "default_version") },
      'regions' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('regions') { should include #{single.inspect} }" } },
      'online_prediction_logging' => ->(x, path) { x.nil? ? [] : ["its('online_prediction_logging') { should cmp #{x.inspect} }"] },
      'online_prediction_console_logging' => ->(x, path) { x.nil? ? [] : ["its('online_prediction_console_logging') { should cmp #{x.inspect} }"] },
      'labels' => ->(x, path) { x.nil? ? [] : x.map { |k, v| "its('labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'Model'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_ml_engine_model',
      identifiers: @params,
      number: i
    }
    File.open("#{path}/#{name}_#{i}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(my_map))
    end


  end


  private

  def product_url
    'https://ml.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/models/{{name}}'
  end
end
