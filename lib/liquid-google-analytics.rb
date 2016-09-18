# Generate script code for Google Analytics with Liquid Tag
require 'liquid'
require 'liquid/google_analytics'

Liquid::Template.register_tag 'google_analytics', Liquid::GoogleAnalytics