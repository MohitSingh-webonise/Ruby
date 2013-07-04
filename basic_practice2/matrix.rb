class Mirrormatrix
  def create_magic_square
    puts "\t\t Welcome to the RUBY."
    puts "\tEnter a integer between 3 to 9."
    num=gets.chomp
    if num.to_i>=3 && num.to_i%2!=0 then
      puts "\tAddition of Row's or Column's or Daigonal's element is:#{num.to_i*(num.to_i*num.to_i/2+1)}"
      puts "\tNumber of elements in this metrix is:#{num.to_i*num.to_i}"
      arr=Array.new(num.to_i) {Array.new(num.to_i)}
      for i in 0...num.to_i
        for j in 0...num.to_i      
          k = i.to_i + 1
          l = j.to_i + 1
          arr[i][j]=(num.to_i*((k.to_i+l.to_i-1+num.to_i/2)% num.to_i)+((k.to_i+2*l.to_i-2)% num.to_i)+1).to_i
        end
      end 
        puts "\t\tMagic Matrix is:"
        puts "\n\n"
        for i in 0..num.to_i-1
          for j in 0..num.to_i-1
            print("\t#{arr[i.to_i][j.to_i]}")
          end
             puts "\n"
        end
    else
      puts "\t This is for ODD X ODD magic matrix creation."
    end
  end

end



obj=Mirrormatrix.new
obj.create_magic_square
