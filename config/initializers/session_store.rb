# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_second_session',
  :secret      => '9e2dc03c9b2acc0151cf7ed901afc0df6b85eadccf77b5fec3c2bc6fb73abc7413089494c1c01782dcb5985755cae8376f002f58924338900f673a5a98094774'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
