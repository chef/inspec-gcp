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

title 'Test GCP google_container_node_pool resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
gcp_kube_cluster_zone = input(:gcp_kube_cluster_zone, value: 'gcp_kube_cluster_zone', description: 'The zone that the kube cluster resides in.')
gcp_kube_cluster_name = input(:gcp_kube_cluster_name, value: 'gcp_kube_cluster_name', description: 'The parent container clusters name.')
regional_node_pool = input('regional_node_pool', value: {
  "name": "inspec-gcp-regional-node-pool",
  "cluster_name": "inspec-gcp-regional-node-pool-cluster",
  "node_count": 1,
  "initial_node_count": 1
}, description: 'Regional Node Pool definition')
control 'google_container_node_pool-1.0' do
  impact 1.0
  title 'google_container_node_pool resource test'

  describe google_container_node_pool(project: gcp_project_id, location: gcp_kube_cluster_zone, cluster_name: gcp_kube_cluster_name, nodepool_name: regional_node_pool['name']) do
    it { should exist }
    its('initial_node_count') { should eq regional_node_pool['initial_node_count']}
  end

  describe google_container_node_pool(project: gcp_project_id, location: gcp_kube_cluster_zone, cluster_name: gcp_kube_cluster_name, nodepool_name: 'nonexistent') do
    it { should_not exist }
  end
end
