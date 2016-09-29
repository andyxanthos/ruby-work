class Orange_Tree
  def initialize age
    @age = age
    @height = 50
    @fruit = false
    @alive = true
  end

  def one_year
    @height += rand(10)
    @age += 1
    puts "Your tree is now #{@height} feet tall and #{@age} years old."
  end

  def fruiting
    if @age > 5
      fruit_num = rand(51)
      puts "You can pick some fruit off the tree! There are #{fruit_num} this year."
      @fruit = true
      puts "Do you want to pick any for yourself? Y/N"
      pick = gets.chomp.downcase
      case pick
      when 'y'
        puts "How many?"
        pick_num = gets.chomp.to_i
        fruit_left = fruit_num - pick_num
        if fruit_left > 1
          puts "Okay. There are still #{fruit_left} on the tree."
        elsif fruit_left == 1
          puts "There's only #{fruit_left} fruit left!"
        else
          puts "You took them all! They ARE delicious."
        end      
      when 'n'
        puts "Maybe next year!"
      end
    end
  end

  def dead
    if @age > 10
      puts "Sadly, the tree has passed away. Its height was #{@height} feet."
      @alive = false
    end
  end
end

def life_loop
  tree = Orange_Tree.new(1)
  10.times do
    tree.one_year
    tree.fruiting
    tree.dead
  end
end

life_loop
