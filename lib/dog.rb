require 'pry'
class Dog 
  attr_accessor :id, :name, :breed
  
  def initialize(id: , name:, breed:)
    self.id = id 
    self.name = name 
    self.breed = breed
    binding.pry 
  end 
  
end 