require 'pry'
class Dog 
  attr_accessor :id, :name, :breed
  
  def initialize(id = nil, name, breed)
    binding.pry 
  end 
  
end 