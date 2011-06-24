$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')

require 'rspec/expectations'
require 'ostruct'

#CAPYBARA
require 'capybara/cucumber'

Capybara.default_driver= :selenium

Capybara.default_selector= :css
Capybara.run_server = false

#gizmo!!!
require 'gizmo'
World(Gizmo::Helpers)

Gizmo.configure do |config|
  config.mixin_dir = File.dirname(__FILE__) + '/features/support/pages'
end