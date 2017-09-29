require 'dragonfly'


# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  protect_from_dos_attacks false
  secret "f6876a89f79bb6d4b2cd0f5faac7a7ae85efbde556bc841c306f445e7c413766"

  response_header 'Accept-Ranges', 'bytes' 
  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
