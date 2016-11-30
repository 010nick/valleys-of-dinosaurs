require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module WorldOfDinosaurs
  class Application < Rails::Application


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.


    console do
      ActiveRecord::Base.connection
    end
  end
end
