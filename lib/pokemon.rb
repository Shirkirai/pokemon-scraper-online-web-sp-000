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
    db.execute("INSERT INTO pokemon (name, type) VALUES (? , ?);", name, type)
  end

  def self.find(id, db)
    new_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id)
    binding.pry
    new_pokemon.id = new_pokemon[0][0]
    new_pokemon.name = new_pokemon[0][1]
    new_pokemon.type = new_pokemon[0][2]

  end
end
