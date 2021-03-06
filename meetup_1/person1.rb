#!/usr/bin/env ruby -w

module Greeting
  def say_hi
    "hi to you from #{@name}"
  end
end


class Person
  include Greeting
  
  def name
    @name
  end

  def age
    @age
  end
  
  def age=(new_age)
    @age = new_age
  end
  
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