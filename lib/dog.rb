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
    DB[:conn).execute("CREATE TABLE IF NOT EXISTS dogs,
    id INTEGER PRIMARY ID
    name TEXT
    breed TEXT " 
  end 
  
end 