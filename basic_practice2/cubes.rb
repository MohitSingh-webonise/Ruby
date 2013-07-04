class Myclass
  def sum_of_qube
    puts "enetr the lower number.\n"
    a=gets
    puts "Enter the upper number."
    b=gets
    :qube
    :sum
    if a<b then	
      for i in a.to_i..b.to_i
        qube=(i*i*i).to_i
	sum=sum.to_i + qube.to_i

      end
      puts "The sums of number's qube from #{a} to #{b} is:#{sum}"

    else
      puts "You are enter in wrong order try again"
    end
  end

end
  
  obj=Myclass.new
  obj.sum_of_qube
