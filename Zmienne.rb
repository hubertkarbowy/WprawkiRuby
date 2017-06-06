# Local variables

10.times do
  x = 10
  p x
end


# Global variables. Not used.
10.times do
  $y = 10
end
p "y=" 
p $y

# Instance variable - available only to a specific instance of a _method_
@batter = 300

# Constant - just use upper case. Normally this concept doesn't apply. If we amend TEAM it will just give a warning. 
TEAM = "Angels"


# Class variable - double at symbol. Not used.
class MyClass
  @@teams = ["As", "Tigers"]
end