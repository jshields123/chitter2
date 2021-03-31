# chitter2
Chitter Challenge
User stories -As a Maker. So that I can let people know what I am doing
I want to post a tweet to chitter

PLAN

Set up MVC environment with correct GEM files needed, sinatra, rackup, shotgun, rspec, capybara. config.ru file, spec helper additions, set up database and test database.

Map out domain model as per link image. https://betterexplained.com/wp-content/uploads/rails/mvc-rails.png

To solve first user story, create a feature test and pass with simplest code.

to set up db.

- Connect to psql
- Create the database using the psql command CREATE DATABASE chitter2;
- Connect to the database using the pqsl command \c chitter2;
- un the query we have saved in the file create_tweets_table.sql


Created feature test for viewing Chitter and passed with basic "Chitter" show in local host to test connection.

Created feature test for viewing hardcoded tweets and passed by creating a tweet.rb file with Tweet class and also a views folder to display the tweets on the tweets route.

Created a database with table to save the tweets in.

Created a test for creating a tweet 



Feel free to use Google, your notes, books, etc. but work on your own
If you refer to the solution of another coach or student, please put a link to that in your README
If you have a partial solution, still check in a partial solution
You must submit a pull request to this repo with your code by 9am Monday morning
Challenge:
As usual please start by forking this repo.

We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

Features:
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
Technical Approach:
In this unit, you integrated a database into Bookmark Manager using the PG gem and SQL queries. You can continue to use this approach when building Chitter Challenge.

If you'd like more technical challenge now, try using an Object Relational Mapper as the database interface.

Some useful resources: DataMapper

Datamapper wiki
Sinatra, PostgreSQL & DataMapper recipe
Ruby Object Mapper

ROM
ActiveRecord

ActiveRecord ORM
Sinatra, PostgreSQL & ActiveRecord recipe
Notes on functionality:
You don't have to be logged in to see the peeps.
Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
The username and email are unique.
Peeps (posts to chitter) have the name of the maker and their user handle.
Your README should indicate the technologies used, and give instructions on how to install and run the tests.
Bonus:
If you have time you can implement the following:

In order to start a conversation as a maker I want to reply to a peep from another maker.
And/Or:

Work on the CSS to make it look good.
Good luck and let the chitter begin!

Code Review
In code review we'll be hoping to see:

All tests passing
High Test coverage (>95% is good)
The code is elegant: every class has a clear responsibility, methods are short etc.
Reviewers will potentially be using this code review rubric. Referring to this rubric in advance may make the challenge somewhat easier. You should be the judge of how much challenge you want at this moment.

Automated Tests:
Opening a pull request against this repository will will trigger Travis CI to perform a build of your application and run your full suite of RSpec tests. If any of your tests rely on a connection with your database - and they should - this is likely to cause a problem. The build of your application created by has no connection to the local database you will have created on your machine, so when your tests try to interact with it they'll be unable to do so and will fail.

If you want a green tick against your pull request you'll need to configure Travis' build process by adding the necessary steps for creating your database to the .travis.yml file.

Travis Basics
Travis - Setting up Databases
Notes on test coverage
Please ensure you have the following AT THE TOP of your spec_helper.rb in order to have test coverage stats generated on your pull request:

require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the HTMLFormatter line and see what happens!