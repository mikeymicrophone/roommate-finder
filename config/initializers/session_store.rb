# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_roommatefinder_session',
  :secret      => '5fe8df69e638f475d91133c64267771739070723ebfb9b747a99c4bad0af601aba4fe00bf64ed76ccc89bba8e6884b01c03681732efee1b55fb0ab17b1ea1b40'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
