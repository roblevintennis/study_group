#!/usr/bin/env ruby -w

module Greeting
  
  # When a module is included by a class, the methods of the module have
  # visibility over the instance variables of the class; we show here this,
  # cautioning that it may not always be wise (because "binds" the module to
  # the class); but sometimes it may be very useful. 
  #
  # Thus, take the following only as an example:
  #
  def say_hi
    "hi to you from #{@name}"
  end
end


class Person
  include Greeting
  
  attr_accessor :name, :age
 
  def initialize(name, age=27)
    @name = name
    @age  = age
  end
end


# Let's enquire about Person's family
puts "Person.superclass=#{Person.superclass}"
puts "Person.ancestors =#{Person.ancestors.inspect}"

# Let's instantiate
he  = Person.new('andre agassi')
she = Person.new('Michelle', 37)

puts  "he=#{he}, she=#{she}, he.class=#{he.class}"
puts  "she.name=#{she.name}, he.name=#{he.name}"

he.age = 39
puts "he.age=#{he.age}"

puts "he.say_hi=#{he.say_hi}"