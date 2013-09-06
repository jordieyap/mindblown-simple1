mindblown-simple1
=================

Simple Project - Rails based

- by Jordanna Yap (jordie.yap@gmail.com)

Requirements
- Ruby version 2 w/ RVM stable
- Core gems: rails-api gem, rails gem (version 4) - See mbapp1/Gemfile for the rest

Download
- git clone https://github.com/jordieyap/mindblown-simple1.git
- or
- download zip: https://github.com/jordieyap/mindblown-simple1/archive/master.zip

Setup
- cd mbapp1/
- (optional) Setup a new gemset / rvm environment to evaluate; install gemfiles required in mbapp1/Gemfile
- rake db:migrate

Initialize/Seed Database w/sample data
- use existing db/seed.rb or create your own using:
- Format: Task.create(name: "string", priority: "string", status: "string")

Go!
- rails server -p<port> (uses basic WebBrick HTTP server)

Docs/References
- Open /path/to/myapp1/doc/app/index.html in your browser for documentation (rdoc)

Enjoy!


