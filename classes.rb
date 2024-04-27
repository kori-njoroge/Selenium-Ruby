# class - Specification or a blue print of how to provide some service

# creating a class
class Dog
  def name_of_dog(name)
    puts "I am #{name}"
  end

  def sleeping
    puts 'The dog is sleeping'
  end

  def playing
    puts 'lets play'
  end
end

# create an object from the class
bosco = Dog.new

bosco.name_of_dog('Bosco')
