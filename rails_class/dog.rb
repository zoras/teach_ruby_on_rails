class Dog
  def initialize(breed, name)
    @breed = breed
    @name = name
  end

  def display
    "I am of #{@breed} and my name is #{@name}"
  end

  def self.bark
    puts "woof! woof!"
  end
end
