p "Hello, world!" # returns the value too
puts "Hello, no return" # returns nil

p ["a", "b", "c"]
puts ["a", "b", "c"]

p [1,2,3]
puts [1,2,3]

puts "Enter name: "
name = "zfsdff"
# name = gets.chomp # gets - method which asks for value, .chomp - cuts off the EOL character
p name
if name == "asdf"
  puts "OK"
else
  puts "No"
end

# STRINGS - use double quotes or single quotes

p "zzz"
p 'xxx'

puts "Name an animal"
# animal = gets.chomp
animal = "chimp"

puts "Name a noun"
# noun = gets.chomp
noun = "noun"

   # String interpolation - using variables in strings. Strings have to be in double quotes, not single quotes

p "The quick brown #{animal} jumped over the lazy #{noun}"

   # Curly braces can contain anything - even a complete Ruby program.

p "Two plus two is #{2+2}"
p "this will be printed in uppercase".upcase
p "THIS WILL BE LOWER".downcase
p "ThiS WiLL bE SwapPed".swapcase
p "Palindrome?".reverse
p "Kayak".upcase.reverse


   # Substitution

str = "The quick brown fox jumped over the quick dog."
p str.sub "quick", "slow" # replaces ONLY first instance
p str.gsub "quick", "slow" # global substitution
p str
p str.gsub! "quick", "slow" # "bang" (!) mutates the variable 
p str 

  # Splitting and stripping

str = "  The quick brown fox jumped over the quick dog.     "
p str
p str.strip # trims whitespace

str = "Token1*Token2*Token3"
p str.split("*") # tokenizes the string taking the star as a delimiter
p "There are #{str.split("*").size} words."
p "There are #{str.split(//).size} characters." # // splits everything into an array of characters



