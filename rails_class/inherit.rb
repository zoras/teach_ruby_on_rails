class Animal
  def initialize(name)
    @name = name
  end

  def eat(other)
    puts "#{@name} ate #{other.name}! #{self.noise}"
  end
end

class Human < Animal
  def initialize(name, catchphrase)
    super(name)
    @catchphrase = catchphrase
  end

  def noise
    @catchphrase
  end
end

human = Human.new("Amar Singh Thapa", "Aayo Gorkhali!")
puts human.noise
