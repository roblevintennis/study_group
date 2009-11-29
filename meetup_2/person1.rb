#!/usr/bin/env ruby -w

module GreetingNotIncluded
  def self.say_hi
    "hi to you from GreetingNotIncluded"
  end
end

module Greeting
  def say_hi
    "hi to you, stranger" # was the controversial: "#{@name}"
  end
end


class Person1
  include Greeting
  
  attr_accessor :name, :age
 
  def initialize(given_name, given_age=27)
    @name = given_name
    @age  = given_age
  end
end


