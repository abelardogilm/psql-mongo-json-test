Small project to compare Mongo and Psql working with JSON

# Requeriments
* Postgresql >= 9.4.x
* MongoDB
* Ruby >= 2

# Setup
* Copy and put your credentials on database connection files:
```sh
$ cp config/database.example.yml config/database.yml
$ cp config/mongoid.example.yml config/mongoid.yml
```
* Install gems
```sh
bundle install
```
* Run rake migration to prepare Psql database
```sh
rake db:create
rake db:migrate
```
