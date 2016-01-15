class Cars
# sublime code doesnt know that I am using ruby - 'in plain text select Ruby' or shift+command+p select 'Set syntax:Ruby'

attr_accessor :colour,:plate,:model

#add a method to call name
def Who_are_you
	puts 'suryas car Toyota'
	end

def Car_Colour
  puts "my car colour is #{@colour}"
end

end
object=Cars.new 
# #object.colour='Silver'
object.Who_are_you

# object.colour='Silverer'
# puts object.colour
# # same as puts object.colour='Black' [define a value and print a value in same line]

# object.plate='AO41UI'
# puts object.plate

# puts object.model='Camry'
# #evaluate a variable inside a print statement
# #print_colour (my car colour is silver)
# #puts "my car colour is #{object.colour} \n my car plate number is #{object.plate}"

# object.Car_Colour
# #object.Colour_of_car