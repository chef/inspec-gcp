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
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_error'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_execution'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_execution_labels'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_execution_metadata'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_executor_detail'
require 'google/vertexai/property/schedule_cpjrpjjdtdedc_detail'
require 'google/vertexai/property/schedule_cpjrpjjdtdedcj_detail'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_inputs'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_outputs'
require 'google/vertexai/property/schedule_create_pipeline_job_request_pipeline_job_job_detail_task_details_pipeline_task_status'
module GoogleInSpec
  module VertexAI
    module Property
      class ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetails
        attr_reader :inputs

        attr_reader :pipeline_task_status

        attr_reader :end_time

        attr_reader :outputs

        attr_reader :create_time

        attr_reader :start_time

        attr_reader :execution

        attr_reader :task_name

        attr_reader :parent_task_id

        attr_reader :state

        attr_reader :task_id

        attr_reader :executor_detail

        attr_reader :error

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @inputs = GoogleInSpec::VertexAI::Property::ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsInputs.new(args['inputs'], to_s)
          @pipeline_task_status = GoogleInSpec::VertexAI::Property::ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsPipelineTaskStatusArray.parse(args['pipelineTaskStatus'], to_s)
          @end_time = args['endTime']
          @outputs = GoogleInSpec::VertexAI::Property::ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsOutputs.new(args['outputs'], to_s)
          @create_time = args['createTime']
          @start_time = args['startTime']
          @execution = GoogleInSpec::VertexAI::Property::ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsExecution.new(args['execution'], to_s)
          @task_name = args['taskName']
          @parent_task_id = args['parentTaskId']
          @state = args['state']
          @task_id = args['taskId']
          @executor_detail = GoogleInSpec::VertexAI::Property::ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsExecutorDetail.new(args['executorDetail'], to_s)
          @error = GoogleInSpec::VertexAI::Property::ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsError.new(args['error'], to_s)
        end

        def to_s
          "#{@parent_identifier} ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetails"
        end
      end

      class ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetailsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetails.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| ScheduleCreatePipelineJobRequestPipelineJobJobDetailTaskDetails.new(v, parent_identifier) }
        end
      end
    end
  end
end
