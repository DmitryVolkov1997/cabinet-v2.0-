require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cabinetguide
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.before_configuration do
    #   I18n.locale = :ru
    #   I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    #   I18n.reload!
    # end 
    config.i18n.default_locale = :ru
    config.i18n.available_locales = [:ru, :en]

    config.time_zone = 'Astana'
    config.active_record.default_timezone = :local
  end
end
