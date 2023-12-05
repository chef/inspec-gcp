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
class ArtifactregistryProjectLocationRepositorys < GcpResourceBase
  name 'google_artifactregistry_project_location_repositories'
  desc 'ProjectLocationRepository plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:maven_configs, field: :maven_config)
  filter_table_config.add(:docker_configs, field: :docker_config)
  filter_table_config.add(:virtual_repository_configs, field: :virtual_repository_config)
  filter_table_config.add(:remote_repository_configs, field: :remote_repository_config)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:formats, field: :format)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:create_times, field: :create_time)
  filter_table_config.add(:update_times, field: :update_time)
  filter_table_config.add(:kms_key_names, field: :kms_key_name)
  filter_table_config.add(:modes, field: :mode)
  filter_table_config.add(:cleanup_policies, field: :cleanup_policies)
  filter_table_config.add(:size_bytes, field: :size_bytes)
  filter_table_config.add(:satisfies_pzs, field: :satisfies_pzs)
  filter_table_config.add(:cleanup_policy_dry_runs, field: :cleanup_policy_dry_run)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('repositories')
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
      'mavenConfig' => ->(obj) { return :maven_config, GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryMavenConfig.new(obj['mavenConfig'], to_s) },
      'dockerConfig' => ->(obj) { return :docker_config, GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryDockerConfig.new(obj['dockerConfig'], to_s) },
      'virtualRepositoryConfig' => ->(obj) { return :virtual_repository_config, GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryVirtualRepositoryConfig.new(obj['virtualRepositoryConfig'], to_s) },
      'remoteRepositoryConfig' => ->(obj) { return :remote_repository_config, GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryRemoteRepositoryConfig.new(obj['remoteRepositoryConfig'], to_s) },
      'name' => ->(obj) { return :name, obj['name'] },
      'format' => ->(obj) { return :format, obj['format'] },
      'description' => ->(obj) { return :description, obj['description'] },
      'labels' => ->(obj) { return :labels, GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryLabels.new(obj['labels'], to_s) },
      'createTime' => ->(obj) { return :create_time, obj['createTime'] },
      'updateTime' => ->(obj) { return :update_time, obj['updateTime'] },
      'kmsKeyName' => ->(obj) { return :kms_key_name, obj['kmsKeyName'] },
      'mode' => ->(obj) { return :mode, obj['mode'] },
      'cleanupPolicies' => ->(obj) { return :cleanup_policies, GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryCleanupPolicies.new(obj['cleanupPolicies'], to_s) },
      'sizeBytes' => ->(obj) { return :size_bytes, obj['sizeBytes'] },
      'satisfiesPzs' => ->(obj) { return :satisfies_pzs, obj['satisfiesPzs'] },
      'cleanupPolicyDryRun' => ->(obj) { return :cleanup_policy_dry_run, obj['cleanupPolicyDryRun'] },
    }
  end

  private

  def product_url(_ = nil)
    'https://artifactregistry.googleapis.com/v1beta1/'
  end

  def resource_base_url
    '{{parent}}/repositories'
  end
end
