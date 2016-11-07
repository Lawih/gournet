CarrierWave.configure do |config|
  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :file                      # required
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGVCBYWPMLTCYQ5WPA',
    google_storage_secret_access_key: '8hsqj6qaabUI78BTqKn/JYS/jD0AjBM8aXIaQZT4'
  }
  config.fog_directory = 'gournet_photos'
end