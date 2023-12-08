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
require 'google/artifactregistry/property/projectlocationrepository_cleanup_policies'
require 'google/artifactregistry/property/projectlocationrepository_docker_config'
require 'google/artifactregistry/property/projectlocationrepository_labels'
require 'google/artifactregistry/property/projectlocationrepository_maven_config'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_apt_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_apt_repository_public_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_docker_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_maven_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_npm_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_python_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_upstream_credentials'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_upstream_credentials_username_password_credentials'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_yum_repository'
require 'google/artifactregistry/property/projectlocationrepository_remote_repository_config_yum_repository_public_repository'
require 'google/artifactregistry/property/projectlocationrepository_virtual_repository_config'
require 'google/artifactregistry/property/projectlocationrepository_virtual_repository_config_upstream_policies'

# A provider to manage Artifact Registry resources.
class ArtifactregistryProjectLocationRepository < GcpResourceBase
  name 'google_artifactregistry_project_location_repository'
  desc 'ProjectLocationRepository'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :maven_config
  attr_reader :docker_config
  attr_reader :virtual_repository_config
  attr_reader :remote_repository_config
  attr_reader :name
  attr_reader :format
  attr_reader :description
  attr_reader :labels
  attr_reader :create_time
  attr_reader :update_time
  attr_reader :kms_key_name
  attr_reader :mode
  attr_reader :cleanup_policies
  attr_reader :size_bytes
  attr_reader :satisfies_pzs
  attr_reader :cleanup_policy_dry_run

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @maven_config = GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryMavenConfig.new(@fetched['mavenConfig'], to_s)
    @docker_config = GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryDockerConfig.new(@fetched['dockerConfig'], to_s)
    @virtual_repository_config = GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryVirtualRepositoryConfig.new(@fetched['virtualRepositoryConfig'], to_s)
    @remote_repository_config = GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryRemoteRepositoryConfig.new(@fetched['remoteRepositoryConfig'], to_s)
    @name = @fetched['name']
    @format = @fetched['format']
    @description = @fetched['description']
    @labels = GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryLabels.new(@fetched['labels'], to_s)
    @create_time = @fetched['createTime']
    @update_time = @fetched['updateTime']
    @kms_key_name = @fetched['kmsKeyName']
    @mode = @fetched['mode']
    @cleanup_policies = GoogleInSpec::Artifactregistry::Property::ProjectLocationRepositoryCleanupPolicies.new(@fetched['cleanupPolicies'], to_s)
    @size_bytes = @fetched['sizeBytes']
    @satisfies_pzs = @fetched['satisfiesPzs']
    @cleanup_policy_dry_run = @fetched['cleanupPolicyDryRun']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "ProjectLocationRepository #{@params[:name]}"
  end

  private

  def product_url(_ = nil)
    'https://artifactregistry.googleapis.com/v1beta1/'
  end

  def resource_base_url
    '{{name}}'
  end
end