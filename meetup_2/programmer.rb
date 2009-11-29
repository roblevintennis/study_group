#!/usr/bin/env ruby -w

require './person2.rb'

class Programmer < Person2
  
  attr_accessor :skills
  
  
  def initialize(name, age, *new_skills)

     super(name, age)
    
     @skills = new_skills
  end
  
end

john = Programmer.new('john', 33, :fortran, :perl, :ruby)
p john.age
p john.skills