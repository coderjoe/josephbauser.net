# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_josephbauser.net_session',
  :secret      => 'ce27871f7304e02db09baf869360e8fdd53e7518e5f941cb10682c6811355e645a107c1946b0448d4d01b91231d0569b0a7e365f8639a626decbce9e3f70af3e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
