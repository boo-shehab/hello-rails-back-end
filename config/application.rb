require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module HelloRailsBackEnd
  class Application < Rails::Application
    config.load_defaults 7.0

    config.api_only = true

    # CORS configuration
    config.autoload_paths += %W(#{config.root}/app/models)
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001' # Update this with the correct URL of your React app
        resource '*', headers: :any, methods: [:get]
      end
    end
  end
end
