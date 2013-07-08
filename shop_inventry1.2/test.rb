require './consumer_interface'
require './shopkeeper_interface'
obj1=Prasentation::Order.new
obj = Admin::Userinterface.new
puts "\t\tWho are you??"
name=gets.chomp
if "shopkeeper"==name
	obj.shop_keeper_interface(name)
elsif  "customer"==name
	obj1.customer_interface(name)
else
	puts "\t\tInvalid Credential Try Again.."
end

