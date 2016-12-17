class Team
  attr_accessor :name, :motto

  def initialize(options = {})
    @name = options[:name]
    @motto = options[:motto]
    @heroes = []
  end

  def add_hero (hero)
    @heroes << hero
  end

  def heroes
    @heroes
  end

end
