
#  --------------- METHOD ARGUMENTS -----------------

def full_name(first_name, last_name)
  first_name + " " + last_name
end

puts full_name("Hubert", "Karbowy")

  # Bez nawiasow tez zadziala:

def full_name2 first_name, last_name
  first_name + " " + last_name
end

puts full_name2("Hubert", "Karbowy")

  # Named arguments - z dwukropkiem. Przy wywolaniu metody trzeba je podac.
  # Umozliwia przekazywanie argumentow w roznej kolejnosci

def print_address city:, state:, zip:
  puts city
  puts state
  puts zip
end

print_address state:"ZachPom", city:"Szczecin", zip:"70-121"

  # Default arguments - mozna po dwukropku

def stream_movie title:, lang:"en_US"
  puts title
  puts lang
end

stream_movie title:"Monty Python's Fliegender Zirkus", lang:"de_DE"
stream_movie title:"Monty Python's Flying Circus"


#  --------------- METHOD ARGUMENTS WITH COLLECTIONS -----------------

  # Varargs - po Rubiemu "splat argument". Stawiamy gwiazdke przed arg.
  # Traktowane jest to jak tablica

def roster *players
    p players
end

roster "Gracz 1", "Gracz 2", "zzz"

  # Keyword argument - umożliwia przekazanie mapy key/value (hashtable)
def roster2 **players_with_positions
  players_with_positions.each do |player, position| # tak sie iteruje po mapie - miedzy znakami pipe pierwszy jest kluczem, drugi wartoscia
    puts "Player #{player}"
    puts "Position #{position}"
    puts "\n"
  end
end

data = {"Altuve": "2nd Base",     # tak sie tworzy mape
  "Ale Bregman": "3rd Base",
  "Evan Gattis": "Catcher",
  "George Springer": "OF"
}

roster2 data

  # Optional arguments

def invoice options={}  # po nazwie argumentu jest ={}  (tzw. pusty hash)
  puts options[:company] # pomijane jesli nie przekazano argumentu nazwanego
  puts options[:total]
  puts options[:sth_else]    
end

invoice company:"Google", total: "$100", sth_else: "zzz"
invoice company:"Google", total: "$100", state: "zzz"

def invoice2 opcjonalne={}  # slowo kluczowe "options" a potem hash
  puts opcjonalne[:company] # pomijane jesli nie przekazano argumentu nazwanego
  puts opcjonalne[:total]
  puts opcjonalne[:sth_else]    
end
