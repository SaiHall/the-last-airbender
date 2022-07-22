class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliations,
              :photo

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliation]
    @photo = data[:photoUrl]
  end
end
