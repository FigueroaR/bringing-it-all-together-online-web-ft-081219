require 'pry'
class Dog 
  attr_accessor :id, :name, :breed
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    self.id ||= nil
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
    sql = <<-SQL
      INSERT INTO dogs (name, breed) VALUES (?, ?)
      SQL

    DB[:conn].execute(sql, self.name, self.breed)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM dogs")[0][0]

    self
  end 
  
  def self.create(hash)
    dog = self.new(hash)
    dog.save
    dog 
    #binding.pry
  end 
  
  def self.new_from_db(row)
    hash = { :id => row[0], :name => row[1], :type => row[3]
    self.new(row)
    
    #binding.pry 
  end 
end 