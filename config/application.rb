require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
Bundler.require(*Rails.groups)

module Kott
  class Application < Rails::Application
    config.middleware.delete ActionDispatch::Session::CookieStore
    config.middleware.insert_before 0, Rack::Cors, :debug => true, :logger => (-> { Rails.logger }) do
      allow do
        origins '*'

        resource '*',
          :headers => :any,
          :expose  => ['access-token', 'client', 'expiry'],
          :methods => [:get, :post, :delete, :put, :options, :head, :patch],
          :max_age => 0
      end
    end

    config.time_zone = 'Central Time (US & Canada)'
  end
end
