# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_subdomain-authentication_session',
  :secret      => 'c079a73fd074e66cc72b2bd4519316d47a3c736d1ae398598d9e42f7ce4fac13e0d77c50cd84f2058c9915bc93840a2f91a48aa3e8e8c929e657d64babd106f2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
