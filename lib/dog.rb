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
    sql = "CREATE TABLE IF NOT EXISTS dogs,
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT"
    
    DB[:conn).execute(sql)
  end 
  
end 