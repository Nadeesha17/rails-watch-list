require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
#require "propshaft/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module RailsWatchList
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])
    config.importmap.assert_valid_keys = %w[stimulus turbo]

    config.generators.system_tests = nil
  end
end
