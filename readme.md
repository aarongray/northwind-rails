Northwind Rails
===============

Ever wanted to play around with ActiveRecord on a nice database? Now you can use
Northwind to learn about Rails' query syntax. At this point, the project is only
designed for command line usage, but perhaps one day there will be a GUI for it
as well.

Setup
-----

* install all the gems using your preferred method

* create databases to match config/database.yml, or alter this config file to suit yourself

* `rake db:migrate`

* run the sql dump located at db/northwind.sql (it is designed for MySQL)

* `rails server`