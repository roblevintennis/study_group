#!/usr/bin/env ruby -w

module GreetingNotIncluded
  def self.say_hi
    "hi to you from GreetingNotIncluded"
  end
end

module Greeting
  def say_hi
    "hi to you from" #{}"#{@name}"
  end
end


class Person2
  include Greeting
  
  attr_accessor :name, :age
 
  # to assign the instance variables, we can do it from the setter methods
  # but we need to prefix them with "self.", else Ruby thinks that they are
  # local variables that are being assigned. This is a very subtle point in
  # Ruby (even forgotten by the person doing this presentation :--)
  # 
  def initialize(given_name, given_age=27)
    self.name = given_name
    self.age  = given_age
  end
end