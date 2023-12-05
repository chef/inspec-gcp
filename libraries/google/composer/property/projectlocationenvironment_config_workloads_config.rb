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
require 'google/composer/property/projectlocationenvironment_config_workloads_config_scheduler'
require 'google/composer/property/projectlocationenvironment_config_workloads_config_triggerer'
require 'google/composer/property/projectlocationenvironment_config_workloads_config_web_server'
require 'google/composer/property/projectlocationenvironment_config_workloads_config_worker'
module GoogleInSpec
  module Composer
    module Property
      class ProjectLocationEnvironmentConfigWorkloadsConfig
        attr_reader :scheduler

        attr_reader :web_server

        attr_reader :worker

        attr_reader :triggerer

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @scheduler = GoogleInSpec::Composer::Property::ProjectLocationEnvironmentConfigWorkloadsConfigScheduler.new(args['scheduler'], to_s)
          @web_server = GoogleInSpec::Composer::Property::ProjectLocationEnvironmentConfigWorkloadsConfigWebServer.new(args['webServer'], to_s)
          @worker = GoogleInSpec::Composer::Property::ProjectLocationEnvironmentConfigWorkloadsConfigWorker.new(args['worker'], to_s)
          @triggerer = GoogleInSpec::Composer::Property::ProjectLocationEnvironmentConfigWorkloadsConfigTriggerer.new(args['triggerer'], to_s)
        end

        def to_s
          "#{@parent_identifier} ProjectLocationEnvironmentConfigWorkloadsConfig"
        end
      end
    end
  end
end