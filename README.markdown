# Subdomain-Authentication

You can use this project as a starting point for any Rails web application that requires subdomains and authentication. User management and authentication is implemented using "Devise":http://github.com/plataformatec/devise. The "subdomain_routes":http://github.com/mholling/subdomain_routes/ gem implements subdomains and routing.

## Tutorial

A complete "walkthrough" tutorial is available on the GitHub wiki:

[Tutorial](http://wiki.github.com/fortuity/subdomain-authentication/)

This tutorial documents each step that you must follow to create this application.

## Use Cases

1) Administrators can visit the "admin" subdomain and view an administrative home page.
2) Visitors to the main application (without a subdomain) can register as users and create subdomains.
3) Any visitor can visit a subdomain and see a "site" home page.

## Assumptions

This tutorial is based on Rails version 2.3.5. Some of the code shown here will not work in older versions of Rails. 

This was written before the release of Rails 3.0. Things will change significantly in Rails 3.0 so this tutorial will be outdated when Rails 3.0 is released.

Before beginning this tutorial, you need to install 

* The Ruby language ruby (version 1.8.7 or newer)
* The RubyGems packaging system (version 1.3.5 or newer)
* A working installation of SQLite (preferred), MySQL, or PostgreSQL
* Rails (version 2.3.5 or newer)

Check that current versions are installed on your computer:

ruby -v
gem -v
rails -v

You should have experience building a simple Rails application. Refer to http://guides.rubyonrails.org/ (Rails Guides) for help if you are a beginner.