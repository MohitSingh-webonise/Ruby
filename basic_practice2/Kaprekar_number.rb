class Findkaprekar
  def is_kaprekar_number
    puts "\t\t Welcome to the RUBY..."
    puts "Enter a natural number."
    num=gets
    squre=num.to_i*num.to_i
    squre=squre.to_s
    len=squre.length
    :left_side
    :right_side
    :sum
    if len%2!=0 then
      left_side=squre[0,len.to_i/2]                  				 
      right_side=squre[len.to_i/2,len.to_i]                                
      sum=left_side.to_i+right_side.to_i
      if sum.to_i==num.to_i then
        puts "The number is kaprekar."
      else
        puts "The number is not kaprekar."
      end
    else
      left_side=squre[0,len.to_i/2] 
      right_side=squre[len.to_i/2,len.to_i]  
      sum=left_side.to_i+right_side.to_i
      if sum.to_i==num.to_i then
        puts "The number is kaprekar."
      else
        puts "The number is not kaprekar."
      end
    end
  end

end

obj=Findkaprekar.new
obj.is_kaprekar_number
