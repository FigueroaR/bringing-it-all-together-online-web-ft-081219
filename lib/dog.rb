require 'pry'
class Dog 
  attr_accessor :id, :name, :breed
  
  def initialize(id: ,name:, breed:)
    @id = id
    @name = name 
    @breed = breed
    self.new(name, breed)
    #binding.pry 
  end 
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql) 
  end 
  
  def self.drop_table
    sql = "DROP TABLE dogs"
    DB[:conn].execute(sql)
  end 
  
  def save
  end 
end 