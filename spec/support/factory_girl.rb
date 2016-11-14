require 'factory_girl'

ROUTE_PREFIX = '/api/v1/'
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  FactoryGirl.definition_file_paths = [File.expand_path('../factories', __FILE__)]
	FactoryGirl.find_definitions
end
