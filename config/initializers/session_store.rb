# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iphonetypos_session',
  :secret      => '1f50e42adc505c9f5baf0c5463fc1c09dde517b933cd14d93794ec0634d667a8e9f4d9c454e462bd345e11c5b160848e882e0cf3c4ce633bb16d1a6a835c103d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
