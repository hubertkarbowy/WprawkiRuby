puts "zzzz"

class ApiConnector
   attr_accessor :title, :description, :url
   
   def initialize
     puts "Inicjalizacja"
     @title = 'xxxx'
   end
   
   def test_method
     puts "xxx"
   end
   
   def self.static_method
     puts "statyczna"
   end
   
end


api = ApiConnector.new
api.url = "http://www.google.com"


puts api.url
api.test_method
ApiConnector.static_method
puts api.title