class Hero
  attr_accessor :name, :power, :bio

  def initialize(options = {})
    @name = options[:name]
    @power = options[:power]
    @bio = options[:bio]
  end

end
