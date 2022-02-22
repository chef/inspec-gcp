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
require 'google/iam/property/iam_policy_bindings'

# A provider to manage Cloud Pub/Sub IAM Binding resources.
class TopicIamBinding < GcpResourceBase
  name 'google_pubsub_topic_iam_binding'
  desc 'Topic Iam Binding'
  supports platform: 'gcp'

  attr_reader :params

  attr_reader :condition

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    raise "Expected 'role' to be defined for iam_binding resource" unless params.key?(:role)
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @bindings = GoogleInSpec::Iam::Property::IamPolicyBindingsArray.parse(@fetched['bindings'], to_s)
    @bindings.each do |binding|
      next if binding.role != params[:role]
      if params[:condition]
        # Control defines a condition, match via this condition
        condition = params[:condition]
        if condition[:title] && condition[:title] != binding&.condition&.title
          next
        end
        if condition[:description] && condition[:description] != binding&.condition&.description
          next
        end
        if condition[:expression] && condition[:expression] != binding&.condition&.expression
          next
        end
      else
        # No condition defined in controls, skip any binding with a condition
        next unless binding.condition.title.nil? && binding.condition.description.nil? && binding.condition.expression.nil?
      end
      @members_list = binding.members
      @condition = binding.condition
      @iam_binding_exists = true
    end
  end

  def exists?
    @iam_binding_exists
  end

  def members
    @members_list
  end

  def to_s
    "Topic IamBinding #{@params[:name]} Role: #{@params[:role]}"
  end

  private

  def product_url
    'https://pubsub.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/topics/{{name}}:getIamPolicy'
  end
end
