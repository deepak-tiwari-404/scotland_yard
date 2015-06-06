# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: utf-8

def say_seeding(msg)
  newline
  print "*** Seeding #{msg}"
end

def newline
  print_and_flush("\n")
end

def dot
  print_and_flush(".")
end

def print_and_flush(msg)
  print msg
  $stdout.flush
end

say_seeding(Board.name)
unless Board.exists?
  RAILS_ENV = ENV['RAILS_ENV']
  Rake::Task["board:populate"].invoke
end

# Done
newline
print "Done"
newline