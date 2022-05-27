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

title 'Test GCP google_pubsub_topic resource.'

gcp_project_id = input(:gcp_project_id, value: 'gcp_project_id', description: 'The GCP project identifier.')
topic = input('topic', default: {"name"=>"inspec-gcp-topic"})

control 'google_pubsub_topic-1.0' do
  impact 1.0
  title 'google_pubsub_topic resource test'

  describe google_pubsub_topic(project: gcp_project_id, name: topic['name']) do
    it { should exist }
  end

  describe google_pubsub_topic(project: gcp_project_id, name: 'nonexistent') do
    it { should_not exist }
  end
end
