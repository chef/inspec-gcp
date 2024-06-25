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
class ResourceManagerProjects < GcpResourceBase
  name 'google_projects'
  desc 'Project plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:project_numbers, field: :project_number)
  filter_table_config.add(:lifecycle_states, field: :lifecycle_state)
  filter_table_config.add(:project_names, field: :project_name)
  filter_table_config.add(:create_times, field: :create_time)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:parents, field: :parent)
  filter_table_config.add(:project_ids, field: :project_id)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('projects')
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
      'projectNumber' => ->(obj) { [:project_number, obj['projectNumber']] },
      'lifecycleState' => ->(obj) { [:lifecycle_state, obj['lifecycleState']] },
      'name' => ->(obj) { [:project_name, obj['name']] },
      'createTime' => ->(obj) { [:create_time, parse_time_string(obj['createTime'])] },
      'labels' => ->(obj) { [:labels, obj['labels']] },
      'parent' => ->(obj) { [:parent, GoogleInSpec::ResourceManager::Property::ProjectParent.new(obj['parent'], to_s)] },
      'projectId' => ->(obj) { [:project_id, obj['projectId']] },
    }
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  private

  def product_url(_ = nil)
    'https://cloudresourcemanager.googleapis.com/v1/'
  end

  def resource_base_url
    'projects'
  end
end
