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

## Dependencies

This application requires Rails version 2.3.5. Some of the code shown here will not work in older versions of Rails. 

This application was written before the release of Rails 3.0. Things will change significantly in Rails 3.0 so this application will likely not work with Rails 3.0.

To use this application, you need to install 

* The Ruby language ruby (version 1.8.7 or newer)
* The RubyGems packaging system (version 1.3.5 or newer)
* A working installation of SQLite (preferred), MySQL, or PostgreSQL
* Rails (version 2.3.5 or newer)

## Gems Required

The application uses the following gems:

* haml (version 2.2.17)
* will_paginate (version 2.3.12)
* formtastic (version 0.9.7)
* warden (version 0.9.3)
* devise (version 1.0.1)
* inherited_resources (version 1.0.3)
* subdomain_routes (version 0.3.1)
* friendly_id (version 2.2.7)

## Download

The source code is managed with Git (a version control system) and hosted at GitHub. You'll need Git on your machine (install it from [http://git.or.cz/](http://git.or.cz/)).

You can download the app ("clone the repository") with the command

    $ git clone git@github.com:fortuity/subdomain-authentication.git

## Getting Started

### Configure Email

Configure email by modifying

    config/initializers/devise.rb

and setting the return email address for emails sent from the application.

You may need to set values for your mailhost in

    config/environments/development.rb
    config/environments/production.rb

### Set Up the Database

You can use the default database settings if you're using SQLite. 

If you're using MySQL, you'll need to edit the file

    config/database.yml

Set up the database by running

    $ rake db:create
    $ rake db:migrate
    $ rake sdauth:setup

Running the "sdauth:setup" rake task sets up an initial administrator and user. You can modify the file

    lib/tasks/setup.rake

if you wish to change the administrator and user logins before you run the migration.

### Launch the Application

Start the server

    $ script/server

and go to [http://localhost:3000/](http://localhost:3000/). 

To sign in as the pre-configured administrator, (unless you've changed it) use

    email: admin@test.com
    password: admin123

To sign in as the pre-configured user, (unless you've changed it) use

    email: user@test.com
    password: user123

You should delete or change the pre-configured logins before you deploy your application.

## Customizing

[Devise](http://github.com/plataformatec/devise) provides a variety of features for implementing authentication. See the Devise documentation for options.

This application provides no useful functionality apart from implementing subdomains and authentication. You can begin adding functionality by modifying the Site model (for example, to create a blog for each subdomain).

## Testing

The application does not include tests (of either Test::Unit or RSpec varieties). It relies on  [Devise](http://github.com/plataformatec/devise) which includes extensive tests. This application is intended to be a basis for your own customized application and (in most cases) you will be writing your own tests for your required behavior.

## Documentation and Support

You can find documentation for [Devise](http://github.com/plataformatec/devise) at [http://github.com/plataformatec/devise](http://github.com/plataformatec/devise). There is an active [Devise mailing list](http://groups.google.com/group/plataformatec-devise) and you can submit [Devise issues](http://github.com/plataformatec/devise/issues) at GitHub.

You can find documentation for [subdomain_routes](http://github.com/mholling/subdomain_routes/) at [http://github.com/mholling/subdomain_routes/](http://github.com/mholling/subdomain_routes/). There is no active forum for support but you can post to [Matthew Hollingworth's blog](http://code.matthewhollingworth.net/articles/2009-06-02-adding-subdomains-to-rails-routing) with questions and submit [subdomain_routes issues](http://github.com/mholling/subdomain_routes/issues) at GitHub.

The [Devise](http://github.com/plataformatec/devise) community and  [subdomain_routes](http://github.com/mholling/subdomain_routes/) author are your best source for answers to questions about authentication and subdomain implementation. For specific issues with this application, you can submit [bug reports](http://github.com/fortuity/subdomain-authentication/issues) at GitHub. If you want to post complaints (or praise!) about this application, there is a forum for this application at [Get Satisfaction](http://getsatisfaction.com/origin/products/origin_rails_23subdomain_authentication_example_application).

This application is provided without additional documentation or support.

## Credits

Daniel Kehoe ([http://danielkehoe.com/](http://danielkehoe.com/)) implemented the application and wrote the tutorial.

## License

### Public Domain Dedication

This work is a compilation and derivation from other previously released works. With the exception of various included works, which may be restricted by other licenses, the author or authors of this code dedicate any and all copyright interest in this code to the public domain. We make this dedication for the benefit of the public at large and to the detriment of our heirs and successors. We intend this dedication to be an overt act of relinquishment in perpetuity of all present and future rights to this code under copyright law.

