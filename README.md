mindblown-simple1
=================

Simple Project - Rails based

- by Jordanna Yap (jordie.yap@gmail.com)

Requirements
- Ruby version 2 w/ RVM stable
- Core gems: rails-api gem, rails gem (version 4) - See mbapp1/Gemfile for the rest

Install/Setup
- git clone
- cd mbapp1/
- setup your rvm environment for new gemset
-   rvm gemset create <newgemset_for myapp1>
-   rvm gemset use <newgemset>
-   gem install (see Gemfile)
- rake db:migrate
- initialize the database use existing db/seed.rb or create your own using 
-   Task.create(name: "string", priority: "string", status: "string")

Go!
- rails server -p<port> (uses basic WebBrick HTTP server)

Docs/References
- see rdocs : navigate to your desktop file /path/to/myapp1/doc/app/index.html
- Open in Browser (very barebones :) )


