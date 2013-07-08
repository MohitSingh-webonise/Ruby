module Admin

	class Userinterface
		def shop_keeper_interface user
			require './product'
      abc=true
      i=1.to_i
  		obj2=Bridge::Product.new
   	  if "shopkeeper"==user
  	  while abc==true do  
    		puts "\t\tEnter a choice for..."
     		puts "\t\tWant to..."
      	puts "\t\t1.Add product."
      	puts "\t\t2.Remove product."
     	  puts "\t\t3.List all product."
      	puts "\t\t4.Serch product."
      	puts "\t\t5.Update product."
      	puts "\t\t6.Exit."
      	choice=gets.chomp

      	case choice.to_i
      		when 1
        		puts "\t\tEnter product detail."
        		puts "\t\tName."						
						obj2.pro_name=gets.chomp
        		puts "\t\tPrice."
        		obj2.price=gets.chomp
        		puts "Stock Item."
        		obj2.stock_item=gets.chomp
        		puts "Compnay Name."
        		obj2.comp_name=gets.chomp
						obj2.id=i
						i=i.to_i+1
        		if obj2.add_product?(obj2)==true then
          		puts "\t\tProduct added successfully."
        		else
          		puts "\t\tTry again."
       		 end
      
     			 when 2
        		puts "\t\tEnter product ID."
        		obj2.id=gets.chomp
        		if obj2.remove_product?(obj2)==true  then
          		puts "\t\tItem is removed successfully."
        		else
          		puts "\t\tTry again."
        		end
      

     			  when 3
       			  obj2.list_product

      			when 4
        			puts "\t\tEnter product name."
        			name=gets.chomp
							if name.empty?
								puts "\t\tYou are not enter correct field."
							else
								obj2.pro_name=name
        				obj2.search_product(obj2)
							end
      			when 5
        			puts "\t\tEnter product Id."
        			obj2.id=gets.chomp
							puts "\t\tEnter product detail."
        			puts "\t\tName."
        			obj2.pro_name=gets.chomp
        			puts "\t\tPrice."
        			obj2.price=gets.chomp
        			puts "Stock Item."
        			obj2.stock_item=gets.chomp
        			puts "Compnay Name."
        			obj2.comp_name=gets.chomp
        			if obj2.update_product(obj2)
								puts "\t\tUpdated successfully."
							else
                puts "Try again."
							end

     				when 6
        			abc=false
     				else
        			puts "Invalid choice try again."
      			end
      		end   
    	else
      	puts "\t\tWrong credentials try again."
    end
    end
  end
end



