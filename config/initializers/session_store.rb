# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iphonetypos_session',
  :secret      => 'e7d876ee266220075ada32e3e689c0d880d1b11d1a2f877d4848bfa9fad15b79049ff775c3b898dc6a4a0c5772b70eea75274505f3a20c7b46a4201e600ec61c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
