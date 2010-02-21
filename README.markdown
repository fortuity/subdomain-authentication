# Subdomain-Authentication

You can use this project as a starting point for any Rails web application that requires subdomains and authentication. User management and authentication is implemented using the  [Devise](http://github.com/plataformatec/devise) gem. The [subdomain_routes](http://github.com/mholling/subdomain_routes/) gem implements subdomains and routing.

## Tutorial

A complete "walkthrough" tutorial is available on the GitHub wiki:

[Tutorial](http://wiki.github.com/fortuity/subdomain-authentication/tutorial-walkthrough)

The tutorial documents each step that you must follow to create this application. Every step is documented concisely, so a complete beginner can create this application without any additional knowledge. However, no explanation is offered for any of the steps, so if you are a beginner, you’re advised to look for an introduction to Rails elsewhere.

## Use Cases

1. Administrators can visit the "admin" subdomain and view an administrative home page.
2. Visitors to the main application (without a subdomain) can register as users and create subdomains.
3. Any visitor can visit a subdomain and see a "site" home page.

## Assumptions

This application requires Rails version 2.3.5. Some of the code shown here will not work in older versions of Rails. 

This application was written before the release of Rails 3.0. Things will change significantly in Rails 3.0 so this application will likely not work with Rails 3.0.

To use this application, you need to install 

* The Ruby language ruby (version 1.8.7 or newer)
* The RubyGems packaging system (version 1.3.5 or newer)
* A working installation of SQLite (preferred), MySQL, or PostgreSQL
* Rails (version 2.3.5 or newer)
