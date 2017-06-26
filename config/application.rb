require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FlashMessage
  class Application < Rails::Application
    config.active_record.primary_key = :uuid
    config.active_record.raise_in_transactional_callbacks = true
    config.active_support.escape_html_entities_in_json = true
    config.generators.javascript_engine = :js
  end
end
