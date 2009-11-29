#!/usr/bin/env ruby -w

require 'person.rb'

# Let's enquire about Person's family
puts "Person.superclass=#{Person.superclass}"
puts "Person.ancestors =#{Person.ancestors.inspect}"

# Let's instantiate
he  = Person.new('andre agassi')
she = Person.new('Michelle', 37)

puts  "he=#{he}, she=#{she}, he.class=#{he.class}"
puts  "she.name=#{she.name}, he.name=#{he.name}"
puts

he.age = 39
puts "he.age=#{he.age}"

puts "he.say_hi=#{he.say_hi}"

p "GreetingNotIncluded.say_hi=#{GreetingNotIncluded.say_hi}"
