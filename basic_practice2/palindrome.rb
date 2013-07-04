class Checkpaligdrom
  def palindrom
    puts "\t\t Welcome to the RUBY..."
    puts "Enter a string."
    str=gets.chomp
    rev=str.reverse
    if str==rev then
      puts "String is palindrom."
    else
      puts "String is not palindrom."
    end

  end

end


obj=Checkpaligdrom.new
obj.palindrom
