module Bridge
	  class Product
      @id
      @pro_name
			@price
      @stock_item
 			@comp_name

   	attr_accessor:id
    attr_accessor:pro_name
    attr_accessor:price
    attr_accessor:stock_item
    attr_accessor:comp_name

    def add_product?(a)
	 		d="  |  "
			file=File.new("product_record.txt","a+")
      file.write(a.id.to_s + d + a.pro_name + d + a.price + d + a.stock_item + d + a.comp_name)
      file.write("\n")
 			file.close
			return true

    end


    def remove_product?(a)
			str=""
			File.open("product_record.txt", "r") do |f|
			f.each_line do |line|
			if line.include? "#{a.id}"
				puts "#{line}"
			else
				str << line
				str << "\n"
			end
			end
   		end
   			puts "#{str}"
				File.open("abc.txt", 'w+') {|f| f.write(str) }
				File.delete("product_record.txt")
				File.rename("abc.txt","product_record.txt")
    end



    def list_product()
      puts "ID | Name | Price | Stock item | Compnay"
			File.open("product_record.txt", "r").each_line do |line|
			puts line
      puts "\n"
			end
			 puts "\n\n"
    end



    def search_product(b)
			val=b.pro_name
    	File.open("product_record.txt") do |f|
  		f.each_line do |line|
   		if line.include? "#{val}" 
      	puts "#{line}"
   	 end
 			 end
			end
    end




    def update_product(a)
			str=""
			d="  |  "
      File.open("product_record.txt") do |f|
      f.each_line do |line|
 			if line.include? "#{a.id}" 
				str << "#{a.id.to_s}  #{d}  #{a.pro_name}  #{d}  #{a.price}  #{d}  #{a.stock_item}  #{d}  #{a.comp_name}"		
				str << "\n"
			else
        str << line	
				str << "\n"				
      end
       end
        end
					#str.gsub /\n+/, ''
					puts "#{str}"
					File.open("abc.txt", 'w+') {|f| f.write(str) }
					File.delete("product_record.txt")
					File.rename("abc.txt","product_record.txt")
					return true
    end

  end

end
