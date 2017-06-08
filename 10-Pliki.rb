


# tworzenie nowego pliku
plik = File.new("/home/hubert/tmp/nowyplik.txt", 'w+')
plik.puts("zzxzz")
plik.close

# otwieranie pliku

plik2 = File.read("/home/hubert/tmp/nowyplik.txt").chomp
p plik2.split('x')
