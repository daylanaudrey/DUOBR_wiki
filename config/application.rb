require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wiki
  class Application < Rails::Application
    config.assets.initialize_on_precompile = false
    config.autoload_paths += %W(#{config.root}/app/enums)
    config.autoload_paths += Dir["#{config.root}/lib/**"]
    config.autoload_paths += Dir["#{config.root}/lib"]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
		config.i18n.default_locale = 'pt-BR'
    config.active_record.raise_in_transactional_callbacks = true    
  end
end
