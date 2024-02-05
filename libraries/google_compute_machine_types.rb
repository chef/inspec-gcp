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
class ComputeMachineTypes < GcpResourceBase
  name 'google_compute_machine_types'
  desc 'MachineType plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:kinds, field: :kind)
  filter_table_config.add(:ids, field: :id)
  filter_table_config.add(:creation_timestamps, field: :creation_timestamp)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:guest_cpus, field: :guest_cpus)
  filter_table_config.add(:memory_mbs, field: :memory_mb)
  filter_table_config.add(:image_space_gbs, field: :image_space_gb)
  filter_table_config.add(:scratch_disks, field: :scratch_disks)
  filter_table_config.add(:maximum_persistent_disks, field: :maximum_persistent_disks)
  filter_table_config.add(:maximum_persistent_disks_size_gbs, field: :maximum_persistent_disks_size_gb)
  filter_table_config.add(:deprecateds, field: :deprecated)
  filter_table_config.add(:zones, field: :zone)
  filter_table_config.add(:self_links, field: :self_link)
  filter_table_config.add(:is_shared_cpus, field: :is_shared_cpu)
  filter_table_config.add(:accelerators, field: :accelerators)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('machineTypes')
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
      'kind' => ->(obj) { [:kind, obj['kind']] },
      'id' => ->(obj) { [:id, obj['id']] },
      'creationTimestamp' => ->(obj) { [:creation_timestamp, obj['creationTimestamp']] },
      'name' => ->(obj) { [:name, obj['name']] },
      'description' => ->(obj) { [:description, obj['description']] },
      'guestCpus' => ->(obj) { [:guest_cpus, obj['guestCpus']] },
      'memoryMb' => ->(obj) { [:memory_mb, obj['memoryMb']] },
      'imageSpaceGb' => ->(obj) { [:image_space_gb, obj['imageSpaceGb']] },
      'scratchDisks' => ->(obj) { [:scratch_disks, GoogleInSpec::Compute::Property::MachineTypeScratchDisksArray.parse(obj['scratchDisks'], to_s)] },
      'maximumPersistentDisks' => ->(obj) { [:maximum_persistent_disks, obj['maximumPersistentDisks']] },
      'maximumPersistentDisksSizeGb' => ->(obj) { [:maximum_persistent_disks_size_gb, obj['maximumPersistentDisksSizeGb']] },
      'deprecated' => ->(obj) { [:deprecated, GoogleInSpec::Compute::Property::MachineTypeDeprecated.new(obj['deprecated'], to_s)] },
      'zone' => ->(obj) { [:zone, obj['zone']] },
      'selfLink' => ->(obj) { [:self_link, obj['selfLink']] },
      'isSharedCpu' => ->(obj) { [:is_shared_cpu, obj['isSharedCpu']] },
      'accelerators' => ->(obj) { [:accelerators, GoogleInSpec::Compute::Property::MachineTypeAcceleratorsArray.parse(obj['accelerators'], to_s)] },
    }
  end

  private

  def product_url(_ = nil)
    'https://compute.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/zones/{{zone}}/machineTypes'
  end
end
