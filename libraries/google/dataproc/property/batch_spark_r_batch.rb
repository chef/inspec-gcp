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
module GoogleInSpec
  module Dataproc
    module Property
      class BatchSparkRBatch
        attr_reader :main_r_file_uri

        attr_reader :args

        attr_reader :file_uris

        attr_reader :archive_uris

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @main_r_file_uri = args['mainRFileUri']
          @args = args['args']
          @file_uris = args['fileUris']
          @archive_uris = args['archiveUris']
        end

        def to_s
          "#{@parent_identifier} BatchSparkRBatch"
        end
      end
    end
  end
end