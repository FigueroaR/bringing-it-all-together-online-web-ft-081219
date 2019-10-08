require 'pry'
class Dog 
  attr_accessor :name, :breed
  
  def initialize(id = nil, name, breed)
    @id = id 
    @name = name 
    @breed = breed
    binding.pry 
  end 
  
end 