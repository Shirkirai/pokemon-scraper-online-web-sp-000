require 'pry'
class Pokemon

  attr_accessor :name, :type, :db, :id


  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    #binding.pry
  end

  def self.find(name, type)
  end
end
