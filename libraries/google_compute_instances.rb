# frozen_string_literal: true

require 'gcp_backend'

module Inspec::Resources
  class GoogleComputeInstances < GcpResourceBase
    name 'google_compute_instances'
    desc 'Verifies settings for GCP compute instances in bulk'

    example "
      describe google_compute_instances(project: 'chef-inspec-gcp',  zone: 'europe-west2-a') do
        it { should exist }
        ...
      end
    "

    def initialize(opts = {})
      # Call the parent class constructor
      super(opts)
      @display_name = opts[:name]
      @zone = opts[:zone]
      @project = opts[:project]
    end

    # FilterTable setup
    filter_table_config = FilterTable.create
    filter_table_config.add_accessor(:where)
    filter_table_config.add_accessor(:entries)
    filter_table_config.add(:exist?) { |filter_table| !filter_table.entries.empty? }
    filter_table_config.add(:count) { |filter_table| filter_table.entries.count }
    filter_table_config.add(:instance_ids, field: :instance_id)
    filter_table_config.add(:instance_names, field: :instance_name)
    filter_table_config.add(:colors, field: :color, type: :simple)
    filter_table_config.connect(self, :fetch_data)

    def fetch_data
      instance_rows = []
      catch_gcp_errors do
        @instances = @gcp.gcp_compute_client.list_instances(@project, @zone)
      end
      @instances.items.map do |instance|
        instance_rows+=[{instance_id: instance.id,
                        instance_name: instance.name,}]
      end
      @table = instance_rows
    end
  end
end
