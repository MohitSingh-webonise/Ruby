class Findunique
  def non_duplicated_values
    puts "\t\t Wlcome to the Ruby..."
    puts "Want to enter how many element in the array."
    num=gets
    :arr
    arr=Array.new
    :temp
    :len
    :count
    count=0
    for i in 1..num.to_i
      puts "Enter element in the array:#{i}\n"
      temp=gets.chomp
      arr << temp
      #arr.uniq!
    end
     s=arr.find_all { |x| arr.count(x) == 1 }
     puts "unique array elements are :"+s.to_s
  end

end

obj=Findunique.new
obj.non_duplicated_values
