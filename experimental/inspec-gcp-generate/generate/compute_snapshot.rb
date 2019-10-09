require 'yaml'
require 'logger'

title 'Test GCP google_compute_snapshot resource.'


control 'google_compute_snapshot-1.0' do
  impact 1.0
  title 'google_compute_snapshot resource test'

  plural_identifiers = []

  logger = Logger.new(STDOUT)
  logger.level = Logger::WARN
  logger.warn("Generating tests for google_compute_snapshot")
  filters = []
  ignored_fields = []
  output_folder = ENV["OUTPUT_PATH"]
  
  if output_folder.nil?
    
    output_folder = File.join(File.dirname(__FILE__), '../../generated_tests')
    logger.warn("Undefined output folder path at variable OUTPUT_PATH. Defaulting to #{File.expand_path(output_folder)}")
  end

  Dir.mkdir(output_folder) unless File.exists?(output_folder)
  template_path = File.join(File.dirname(__FILE__), '../../generated_test_template.erb')
  config_folder = ENV["CNF_PATH"]
  logger.warn("Undefined configuration folder path at variable CNF_PATH. Ignoring configuration files")
  unless config_folder.nil?
    file_name = File.join(config_folder, "google_compute_snapshot.yaml")
    if File.file?(file_name)
      config = YAML::load_file(file_name)
      config_filters = config['filters']
      config_filters.each do |filter_string|
        filter = eval "lambda { |resource| #{filter_string} }"
        filters.push(filter)
      end
      config_ignored = config['ignore_fields']
      ignored_fields += config_ignored
    end
  end
  project_name = ENV["GCP_PROJECT_NAME"]
  raise "Undefined project name, please set the GCP_PROJECT_NAME variable" if project_name.nil?
  plural_identifiers = [{project: project_name}]





  all_identifiers = []
  i = 0
  plural_identifiers.each do |plural_identifier|
    plural = google_compute_snapshots(plural_identifier)
    identifiers = plural.identifiers
    
    identifiers.each do |identifier|
      all_identifiers.push(identifier)
      resource = google_compute_snapshot(identifier)

      if filters.all? { |filter| filter.call(resource) }
        resource.dump(output_folder, template_path, i, ignored_fields)
        
        output = "Writing #{File.expand_path(output_folder)}/Snapshot_#{i}.rb"
        describe output do
          it { should match /test/ }
        end   
        i += 1
      end
    end
  end

  all_ids_name = 'google_compute_snapshot_identifiers.json'
#  File.open("#{output_folder}/#{all_ids_name}", 'w') do |file|
#    file.write(all_identifiers.to_json)
#  end
end
