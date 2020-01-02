require_relative 'base'

class Player < Base

  attr_accessor :login, :name, :gender, :age

  def initialize(login, name, gender, age)
    @login = login
    @name = name    
    @gender = gender
    @age = age
  end
end