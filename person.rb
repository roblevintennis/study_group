#!/usr/bin/ruby -w

module Greeting
  def hi
    puts "hi to you from #{@name}"
  end
end


class Person
  include Greeting
  
  attr_accessor :name, :age
  # attr_reader :name, :age
  
=begin
  def name
    puts "name is #{@name}"
  end
=end
 
  def initialize(name, age=27)
    @name = name
    @age  = age
  end
end


# Let's enquire about Person's family
p Person.superclass
p Person.ancestors

# Let's instantiate
he= Person.new('andre agassi')
she= Person.new('Michelle', 37)

p he, she, he.class

puts she.name
puts he.age

he.age = 39
puts he.age

puts he.hi