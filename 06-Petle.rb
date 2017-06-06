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

arr.each { |i| p i }

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
