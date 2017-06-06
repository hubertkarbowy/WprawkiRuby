# METHODS

# use def to define a method and end to end it

def snake_case_method
  puts ["word1", "word2", "word3"]
end

snake_case_method

# Values can be returned with the keyword return. It's optional, though, and is considered bad practice.

def second_method
  return ["word1", "word2", "word3"]
end

def third_method
  ["WR1", "WR2", "WR3"]
end

def fourth
  x=11
  return "AAA" if x==10
  "BB"
end

x = second_method
p x

p third_method
p fourth

# Difference between puts and p:

def fifth
  puts "hey"
end

def fifthB
  "hey there"
end

p fifth # doesn't return anything
p fifthB
x = fifthB
p x.upcase

# ---------------- METHODS IN CLASSES

class Invoice
  def self.print_out # use self to define a class method (= static method)
    "Printed out invoice"
  end
  
  def conv_to_pdf # instance method
    "Converted to PDF"
  end
end

p Invoice.print_out # calling a class method
# p Invoice.conv_to_pdf # throws and error - you must first create an instance of a class to call an instance method

i = Invoice.new
i.conv_to_pdf
# i.print_out # can't refer to static method via class instance variables


# ----------------- PROCS = processes that can be stored in variables


full_name = Proc.new { |first, last| first + " " + last} # similar to a lambda (Consumer - no return value)
p full_name["Hubert", "Karbowy"]
p full_name.call("Hubert", "Karbowy")

# Another syntax - for multiline instructions:

another_name = Proc.new do |firstarg, secondarg|
  firstarg + " " + secondarg
end

p another_name["H", "K"]


# ----------------- LAMBDAS = 

first_name = lambda { |first, last| first + " " + last }

p first_name.call("Hub", "Kar")
p first_name["Z", "XX"]

first_name = -> (first, last) { first + " " + last } # Czemu Eclipse daje tutaj blad skoro interpreter nie wyrzuca bledu?
p first_name["Powinno", "Dzialac"]
  
full_name = lambda { |first, last| first + " " + last }
p full_name.call("Imie", "Nazwisko")
# p full_name.call("Imie", "Nazwisko", "Trzeci") # nie zadziala

full_name = Proc.new{ |first, last| first + " " + last }
p full_name.call("Imie", "Nazwisko", "Trzeci") # ignoruje reszte argumentow

def my_method
  p "Przed definicja 1"
  x = lambda { return }
  x.call
  p "Text from within the method"  
end

my_method

def my_method
  p "Przed definicja 2"
  x = Proc.new { return }
  x.call # jesli proc zwraca w metodzie nil, to reszta metody sie nie wykonuje - dziwaczne, ale tak ktos wymyslil...
  p "To sie juz nie wyswietli"  
end

my_method