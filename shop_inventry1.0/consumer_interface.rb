module Prasentation
	class Order
 		def console name
			require './product'
			require './customer'
			obj=Bridge::Product.new
			obj1=Customer::Creditcard.new
			abc=true
			i=1.to_i
			if "customer"==name
				while abc==true do
					puts "\t\tWELCOME TO THE WALL-MART SHOPPING MALL..."
          puts "\t\tMay i help you sir."
					puts "\t\tEnter choice..."
					puts "\t\t1.List The Products."
					puts "\t\t2.Search the Products."
					puts "\t\t3.Buy The products."
					puts "\t\t4.Quit"
					choice=gets.chomp
 					case choice.to_i
   				when 1
 						obj.list_product 
    			when 2
						puts "\t\tEnter product name."
						obj.pro_name=gets.chomp
						obj.search_product(obj)
          when 3
						obj1.o_id=i.to_i
						puts "\t\tEnter product Id."
						obj.id=gets.chomp
						puts "\t\tEnter product Name."
						obj.pro_name=gets.chomp
						puts "\t\tEnter CREDIT CARD Credential..."
						puts "\t\tHolder Name."
						obj1.holder_name=gets.chomp
						puts "\t\tAddress."
						obj1.address=gets.chomp
						puts "\t\tDate of expire."
						obj1.date_expiry=gets.chomp
						puts "\t\tCard Number."
						obj1.card_number=gets.chomp
						i=i.to_i+1
						obj1.product_order?(obj,obj1)
						
					when 4
          	abc=false

					else
             puts "\t\tWrong choice."
  				end
				end

			else
				puts "\t\tEnter wrong credentials try again."
			end

	end

end

end


