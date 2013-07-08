module Customer
	class Creditcard
		@o_id
    @holder_name
	  @address
		@date_expiry
		@card_number

		attr_accessor:holder_name
		attr_accessor:address
 		attr_accessor:date_expiry
		attr_accessor:card_number
		attr_accessor:o_id

		def product_order? a,b
			str=""
			str1=""
			d = " | "
			File.open("product_record.txt", "r") do |f|
				f.each_line do |line|
				if line.include? "#{a.id}" and line.include? "#{a.pro_name}"
					str << line
					puts "after matching :#{str}"

					id1 = str.split("|")[0]
					name = str.split("|")[1]
					price = str.split("|")[2]
					quntity = (str.split("|")[3].to_i-1).to_i
					company = str.split("|")[4]
					num=str.split("|")[3].to_i
					str1 <<  id1 + d + name + d + price + d + quntity.to_s + d + company		
					str1 << "\n"

					if num.to_i >0
						
						file=File.new("product_order.txt","a+")
						file.write(b.o_id.to_s + d + a.id+  d + a.pro_name + d + b.holder_name + d + b.address + d + b.date_expiry + d + b.card_number)
						file.write("\n")
						file.close()		
						
					else
            puts "\t\tproduct is not avilable sorry for inconvenience. "
					end
				else
						str1 << line
						str1 << "\n"
				end
			end
		end
			File.open("abc.txt", 'w+') {|f| f.write(str1) }
			File.delete("product_record.txt")
			File.rename("abc.txt","product_record.txt")
			
		end

  end


end
