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
require 'google/compute/property/snapshot_snapshot_encryption_key'
require 'google/compute/property/snapshot_source_disk_encryption_key'

# A provider to manage Compute Engine resources.
class ComputeSnapshot < GcpResourceBase
  name 'google_compute_snapshot'
  desc 'Snapshot'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :creation_timestamp
  attr_reader :id
  attr_reader :disk_size_gb
  attr_reader :name
  attr_reader :description
  attr_reader :storage_bytes
  attr_reader :licenses
  attr_reader :labels
  attr_reader :label_fingerprint
  attr_reader :source_disk
  attr_reader :zone
  attr_reader :snapshot_encryption_key
  attr_reader :source_disk_encryption_key

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @id = @fetched['id']
    @disk_size_gb = @fetched['diskSizeGb']
    @name = @fetched['name']
    @description = @fetched['description']
    @storage_bytes = @fetched['storageBytes']
    @licenses = @fetched['licenses']
    @labels = @fetched['labels']
    @label_fingerprint = @fetched['labelFingerprint']
    @source_disk = @fetched['sourceDisk']
    @zone = @fetched['zone']
    @snapshot_encryption_key = GoogleInSpec::Compute::Property::SnapshotSnapshotEncryptionKey.new(@fetched['snapshotEncryptionKey'], to_s)
    @source_disk_encryption_key = GoogleInSpec::Compute::Property::SnapshotSourceDiskEncryptionKey.new(@fetched['sourceDiskEncryptionKey'], to_s)
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Snapshot #{@params[:name]}"
  end

  def un_parse
    {
      'creation_timestamp' => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'id' => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'disk_size_gb' => ->(x, _) { x.nil? ? [] : ["its('disk_size_gb') { should cmp #{x.inspect} }"] },
      'name' => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'description' => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'storage_bytes' => ->(x, _) { x.nil? ? [] : ["its('storage_bytes') { should cmp #{x.inspect} }"] },
      'licenses' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('licenses') { should include #{single.inspect} }" } },
      'labels' => ->(x, _) { x.nil? ? [] : x.map { |k, v| "its('labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'label_fingerprint' => ->(x, _) { x.nil? ? [] : ["its('label_fingerprint') { should cmp #{x.inspect} }"] },
      'source_disk' => ->(x, _) { x.nil? ? [] : ["its('source_disk') { should cmp #{x.inspect} }"] },
      'zone' => ->(x, _) { x.nil? ? [] : ["its('zone') { should cmp #{x.inspect} }"] },
      'snapshot_encryption_key' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::SnapshotSnapshotEncryptionKey.un_parse(x, 'snapshot_encryption_key') },
      'source_disk_encryption_key' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::SnapshotSourceDiskEncryptionKey.un_parse(x, 'source_disk_encryption_key') },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = 'Snapshot'

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name:,
      arr:,
      type: 'google_compute_snapshot',
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/snapshots/{{name}}'
  end
end
