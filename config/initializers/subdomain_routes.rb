if Rails.env.to_sym == :development
  require 'subdomain_routes'
  	# make sure subdomain_routes can handle a nil subdomain:
		# http://code.matthewhollingworth.net/articles/2009-06-02-adding-subdomains-to-rails-routing
  	SubdomainRoutes::Config.domain_length = 1
end
if Rails.env.to_sym == :production
  require 'subdomain_routes'
  	# make sure subdomain_routes can handle a nil subdomain:
		# http://code.matthewhollingworth.net/articles/2009-06-02-adding-subdomains-to-rails-routing
  	SubdomainRoutes::Config.domain_length = 2
end
