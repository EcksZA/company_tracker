require 'active_record'
require 'rspec'

require './lib/employee'
require './lib/division'
require './lib/project'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))['test'])

RSpec.configure do |config|
  config.after(:each) do
    Employee.all.each {|worker| worker.destroy}
    Division.all.each {|division| division.destroy}
    Projects.all.each {|work| work.destroy}
  end
end
