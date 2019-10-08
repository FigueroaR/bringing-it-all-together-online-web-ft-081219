require 'pry'
class Dog 
  attr_accessor :id, :name, :breed
  
  def initialize(id:, name:, breed:)
    @id = id 
    @name = name 
    @breed = breed
    #binding.pry 
  end 
  
  def self.create_table
    CREATE TABLE dogs 
    id 
  end 
  
end 