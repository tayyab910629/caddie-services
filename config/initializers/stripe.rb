# config/initializers/stripe.rb
require 'stripe'

Stripe.api_key = Rails.application.secrets.stripe_secret_key
