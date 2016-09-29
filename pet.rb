## This one is a work in progress!

class Pet
  def initialize name, type
    @name = name
    @type = type
    @level = 1
    @exp = 1
    @happiness = 10
    @hunger = 10
    @asleep = false

    puts "Welcome to the world, " + @name + " the " + @type
  end

  def gethungry
    puts "#{name} might be a little hungry right now..."
    @hunger -= 2
  end

  def getsad
    puts "#{name} says 'Hmph.'"
    @happiness -= 3
  end

  def getfull
    puts "#{name} says 'That really hit the spot!'"
    @hunger += 5
  end

  def gethappy
    puts "#{name} says 'You're the best!'"
    @happiness += 3
  end

  def gainexp
    puts "#{name} feels stronger now!"
    @exp += 5
  end

  def gotosleep
    puts "#{name} goes to sleep. Zzzzzz."
    @asleep = true
  end

  def wakeup
    puts "#{name} rises to greet the morning. It's gonna be a good day!"
    @asleep = false
  end

end

pet_created = false

def command_loop
loop do
  puts "Ready for a command!"
  command = gets.chomp

  case command
  when 'new'
    puts "Let's make you a pet!"
    puts "Enter a name for your new pet:"
    name = gets.chomp
    puts "#{name}? Got it. What type of pet is it?"
    type = gets.chomp
    this_pet = Pet.new(name, type)
    puts "You can now interact with your pet, awesome!"
  when 'exit'
    break
  when 'info'
    puts "Here are all the details about your pet:"
    puts "Name: #{this_pet.name}"
    puts "Type: #{this_pet.type}"
    puts "Level: #{this_pet.level}"
    puts "EXP: #{this_pet.exp}"
    puts "Happiness: #{this_pet.happiness}"
    puts "Hunger: #{this_pet.hunger}"
  end
end
end

puts "Welcome. If you're new, type 'new' or 'helpme'!"
first_command = gets.chomp

if first_command == 'new'
  puts "Let's make you a pet!"
  puts "Enter a name for your new pet:"
  name = gets.chomp
  puts "#{name}? Got it. What type of pet is it?"
  type = gets.chomp
  this_pet = Pet.new(name, type)
  puts "You can now interact with your pet, awesome!"
  command_loop
elsif first_command == 'helpme'
  puts " "
  puts "To get started, you can type the 'new' command,"
  puts "which will guide you through the pet creation process."
  puts " "
  puts "The commands are: play, feed, cuddle, run, wake, sleep, info, exit"
  puts "They're pretty self explanatory."
  puts " "
  puts "Type new when it says Ready for a command!"
  command_loop
elsif first_command == 'exit'
  puts "Press CTRL + C to exit."
else
  puts "You must at least create a new pet to continue."
end
