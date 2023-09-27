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
class VertexAIHyperparameterTuningJobs < GcpResourceBase
  name 'google_vertex_ai_hyperparameter_tuning_jobs'
  desc 'HyperparameterTuningJob plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:study_specs, field: :study_spec)
  filter_table_config.add(:trials, field: :trials)
  filter_table_config.add(:states, field: :state)
  filter_table_config.add(:max_failed_trial_counts, field: :max_failed_trial_count)
  filter_table_config.add(:encryption_specs, field: :encryption_spec)
  filter_table_config.add(:errors, field: :error)
  filter_table_config.add(:end_times, field: :end_time)
  filter_table_config.add(:update_times, field: :update_time)
  filter_table_config.add(:start_times, field: :start_time)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:create_times, field: :create_time)
  filter_table_config.add(:parallel_trial_counts, field: :parallel_trial_count)
  filter_table_config.add(:trial_job_specs, field: :trial_job_spec)
  filter_table_config.add(:max_trial_counts, field: :max_trial_count)
  filter_table_config.add(:display_names, field: :display_name)
  filter_table_config.add(:names, field: :name)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('hyperparameterTuningJobs')
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
      'studySpec' => ->(obj) { return :study_spec, obj['studySpec'] },
      'trials' => ->(obj) { return :trials, obj['trials'] },
      'state' => ->(obj) { return :state, obj['state'] },
      'maxFailedTrialCount' => ->(obj) { return :max_failed_trial_count, obj['maxFailedTrialCount'] },
      'encryptionSpec' => ->(obj) { return :encryption_spec, obj['encryptionSpec'] },
      'error' => ->(obj) { return :error, obj['error'] },
      'endTime' => ->(obj) { return :end_time, obj['endTime'] },
      'updateTime' => ->(obj) { return :update_time, obj['updateTime'] },
      'startTime' => ->(obj) { return :start_time, obj['startTime'] },
      'labels' => ->(obj) { return :labels, GoogleInSpec::VertexAI::Property::HyperparameterTuningJobLabels.new(obj['labels'], to_s) },
      'createTime' => ->(obj) { return :create_time, obj['createTime'] },
      'parallelTrialCount' => ->(obj) { return :parallel_trial_count, obj['parallelTrialCount'] },
      'trialJobSpec' => ->(obj) { return :trial_job_spec, obj['trialJobSpec'] },
      'maxTrialCount' => ->(obj) { return :max_trial_count, obj['maxTrialCount'] },
      'displayName' => ->(obj) { return :display_name, obj['displayName'] },
      'name' => ->(obj) { return :name, obj['name'] },
    }
  end

  private

  def product_url(_ = nil)
    'https://{{region}}-aiplatform.googleapis.com/v1/'
  end

  def resource_base_url
    '{{parent}}/hyperparameterTuningJobs'
  end
end