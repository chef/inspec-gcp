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
class CloudSchedulerJobs < GcpResourceBase
  name 'google_cloud_scheduler_jobs'
  desc 'Job plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:schedules, field: :schedule)
  filter_table_config.add(:time_zones, field: :time_zone)
  filter_table_config.add(:states, field: :state)
  filter_table_config.add(:attempt_deadlines, field: :attempt_deadline)
  filter_table_config.add(:retry_configs, field: :retry_config)
  filter_table_config.add(:pubsub_targets, field: :pubsub_target)
  filter_table_config.add(:app_engine_http_targets, field: :app_engine_http_target)
  filter_table_config.add(:http_targets, field: :http_target)
  filter_table_config.add(:regions, field: :region)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('jobs')
  end

  def fetch_wrapped_resource(wrap_path)
    # fetch_resource returns an array of responses (to handle pagination)
    result = @connection.fetch_all(product_url, resource_base_url, @params, 'Get')
    return if result.nil?

    # Conversion of string -> object hash to symbol -> object hash that InSpec needs
    converted = []
    result.each do |response|
      next if response.nil? || !response.key?(wrap_path)
      response[wrap_path].each do |hash|
        hash_with_symbols = {}
        hash.each_key do |key|
          name, value = transform(key, hash)
          hash_with_symbols[name] = value
        end
        converted.push(hash_with_symbols)
      end
    end

    converted
  end

  def transform(key, value)
    return transformers[key].call(value) if transformers.key?(key)

    [key.to_sym, value]
  end

  def transformers
    {
      'name' => ->(obj) { return :name, obj['name'] },
      'description' => ->(obj) { return :description, obj['description'] },
      'schedule' => ->(obj) { return :schedule, obj['schedule'] },
      'timeZone' => ->(obj) { return :time_zone, obj['timeZone'] },
      'state' => ->(obj) { return :state, obj['state'] },
      'attemptDeadline' => ->(obj) { return :attempt_deadline, obj['attemptDeadline'] },
      'retryConfig' => ->(obj) { return :retry_config, GoogleInSpec::CloudScheduler::Property::JobRetryConfig.new(obj['retryConfig'], to_s) },
      'pubsubTarget' => ->(obj) { return :pubsub_target, GoogleInSpec::CloudScheduler::Property::JobPubsubTarget.new(obj['pubsubTarget'], to_s) },
      'appEngineHttpTarget' => ->(obj) { return :app_engine_http_target, GoogleInSpec::CloudScheduler::Property::JobAppEngineHttpTarget.new(obj['appEngineHttpTarget'], to_s) },
      'httpTarget' => ->(obj) { return :http_target, GoogleInSpec::CloudScheduler::Property::JobHttpTarget.new(obj['httpTarget'], to_s) },
      'region' => ->(obj) { return :region, obj['region'] },
    }
  end

  private

  def product_url(_ = nil)
    'https://cloudscheduler.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/locations/{{region}}/jobs'
  end
end
