require 'pry'
class Animal 

  attr_reader :name , :num_legs, :wings


  def initialize(name, num_legs)
    @name = name 
    @num_legs = num_legs
  end

  def warm_blooded?
    @warm_blooded
  end

  def flight 
    @wings
  end

end

class Mammal < Animal

  attr_reader :warm_blooded

  def initialize (name, num_legs)

    super(name, num_legs)
    @warm_blooded = true
    puts "I'm a #{name}, and I'm warm blooded!"
  end 
end

class Amphibian < Animal

   def initialize (name, num_legs)
    @warm_blooded = false
    super(name, num_legs)
  end

end

class Primate < Mammal

  attr_accessor :num_legs

  def initialize(name)
    super(name, 2)
  end  
end

class Frog < Amphibian

  def initialize (name)
    super(name, 4)
  end
end

class Bat < Mammal

  def initialize (name, num_legs)
    @wings = true
    puts "I'm a #{@name}, I'm flying"
    super(name, num_legs)
  end

end

class Bird < Animal
  def initialize (name)
    super(name, 2)
  end
end

class Parrot < Bird

end

class Chimpanzee < Primate
end

ani = Animal.new('joe', 4)
mam = Mammal.new('joe', 4)
puts mam.num_legs

champ = Chimpanzee.new ('champ')
parr = Parrot.new ('parr')

