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
require 'google/compute/property/machinetype_accelerators'
require 'google/compute/property/machinetype_deprecated'
require 'google/compute/property/machinetype_scratch_disks'

# A provider to manage Compute Engine resources.
class ComputeMachineType < GcpResourceBase
  name 'google_compute_machine_type'
  desc 'MachineType'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :kind
  attr_reader :id
  attr_reader :creation_timestamp
  attr_reader :name
  attr_reader :description
  attr_reader :guest_cpus
  attr_reader :memory_mb
  attr_reader :image_space_gb
  attr_reader :scratch_disks
  attr_reader :maximum_persistent_disks
  attr_reader :maximum_persistent_disks_size_gb
  attr_reader :deprecated
  attr_reader :zone
  attr_reader :self_link
  attr_reader :is_shared_cpu
  attr_reader :accelerators

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @kind = @fetched['kind']
    @id = @fetched['id']
    @creation_timestamp = @fetched['creationTimestamp']
    @name = @fetched['name']
    @description = @fetched['description']
    @guest_cpus = @fetched['guestCpus']
    @memory_mb = @fetched['memoryMb']
    @image_space_gb = @fetched['imageSpaceGb']
    @scratch_disks = GoogleInSpec::Compute::Property::MachineTypeScratchDisksArray.parse(@fetched['scratchDisks'], to_s)
    @maximum_persistent_disks = @fetched['maximumPersistentDisks']
    @maximum_persistent_disks_size_gb = @fetched['maximumPersistentDisksSizeGb']
    @deprecated = GoogleInSpec::Compute::Property::MachineTypeDeprecated.new(@fetched['deprecated'], to_s)
    @zone = @fetched['zone']
    @self_link = @fetched['selfLink']
    @is_shared_cpu = @fetched['isSharedCpu']
    @accelerators = GoogleInSpec::Compute::Property::MachineTypeAcceleratorsArray.parse(@fetched['accelerators'], to_s)
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "MachineType #{@params[:machineType]}"
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/zones/{{zone}}/machineTypes/{{machine_type}}'
  end
end
