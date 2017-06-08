# ----------------- LOOPS -------------------

  # While
i=0
while i<10
  puts "Hello"
  i += 1
end

  # Each - iteracja po elementach kolekcji

arr = [1,2,3,4,5,7,6,5,4,3,2,10]
arr.each do |i| # podobne do extended for loop w Javie:
                # for (int i: arr) { ... }
                # Kolejnosc jest gwarantowana?
  p i
end

  # Each - alternatywna skladnia (raczej nie uzywac, chyba ze one-liner)

arr.each { |i| p i } # krotki zapis tego samego co wyzej

  # For - zazwyczaj nie uzywana. Preferowana petla to each

for i in 0..42 # zachowuje sie jak for-comprehension w Scali
  p i
end

  # Nested iterators

teams = { # nested hashes
  "Houston Astros" => {
    "first base" => "Chris Carter",
    "2nd base" => "Jose Altuve",
    "shortstop" => "Carlos Correa"
  },
    
  "Texas Rangerssssssss" => {
    "first base" => "Prince Fielder",
    "2nd base" => "R. Odor",
    "shortstop" => "Elvis Andrus"
  }
}
teams.each do |team, players| # tak sie iteruje po key/value
  puts team
  players.each do |position, player| # w srodku tez jest key / value
    p "#{player} starts at #{position}"
  end
end

  # Rozne sposoby wyboru z kolekcji elementow pasujace do Predicate opisanego przez lambde 

arr2 = Array.new
for i in 0..42
  arr2.push(i)
end
p arr2.select{|item| item>30 && item.even?}
p arr2.select(&:even?) # &: to odpowiednik method reference z Javy - even? zostanie zastosowane do domyslnych parametrow lambdy
p (0..42).to_a.select{|item| item.even?} # .to_a - przeksztalca na tablice
# p (0..42).to_a.select(&:even?) # ciekawe czemu to nie dziala...
 
arr3 = %w(The quick brown fox jumped over the lazy dog) # %w() daje szybki sposob na zamiane stringa na tablice slow
p arr3.select{ |x| x.length>5 }  
p arr3.select{ |vowel| vowel =~ /[dv]/}    # =~ sluzy do wyboru wedlug regexu miedzy slashami

addHundred = arr2.collect{|x| x+100} # odpowiednik collectora z Javy - funkcjonalnie dziala tak samo jak map
p addHundred

numbersAsStrings = %w(123 3222 34.5 bzzt)
p numbersAsStrings.map(&:to_i) # tu znow przyklad method reference.  .to_i parsuje string i zwraca integer
p numbersAsStrings.map(&:to_f) # parsowanie jako float
p ("a".."c").to_a.map{|i| i*2} # string * 2 oznacza podwojenie

quickhash = Hash[[1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}] # w "konstruktorze" hasha mozemy podac tuple (tutaj uzyskiwane z lambdy)
p quickhash
