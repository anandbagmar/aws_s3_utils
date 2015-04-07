require 'rspec'
require 'pry'
require 'rspec/expectations'

def require_dependencies
  ['helpers'].each do |folder|
    Dir.glob(File.join('./spec', "#{folder}", "**", "*.rb")) do |file|
      require file
    end
  end
end

def before_each_spec(config)
  config.before(:each) { |s|
    puts "\nRunning spec: '#{s.example_group.metadata[:full_description]}'"
    Utils.load_and_sanitize("input-data")
    $validation_errors = []
  }
end

def after_each_spec(config)
  config.after(:each) {
    if !$validation_errors.empty?
      msg = "Spec failed. # of validation errors: #{$validation_errors.size}"
      $validation_errors.each do |error|
        msg += "\n\t" + error
      end
      $validation_errors.clear
      raise StandardError.new("Boom! #{msg}")
    end
  }
end

RSpec.configure do |config|
  config.run_all_when_everything_filtered = false
  before_each_spec(config)
  after_each_spec(config)
end

require_dependencies
$time = Time.now
$validation_errors=[]

puts "Running tests at #{$time} against: #{$env}"