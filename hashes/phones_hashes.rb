system "clear"

apple   = {"iphone" => 800, "ipad" => 900, "mackbook" => 2000}
apples  = {:iphone => 800, :ipad => 900, :mackbook => 2000}
applefs = {iphone: 800, ipad: 900, mackbook: 2000}

# Accessing
puts "Iphone " + apple["iphone"].to_s
puts "Iphone " + apples[:iphone].to_s
puts "Iphone " + applefs[:iphone].to_s


# String declaration
apple_store = {"iphone" => 800, "ipad" => 900, "mackbook" => 2000}
puts "\nWith STRING...\nPRICE \t\t ITEMS"
apple_store.each do |product, price|
  puts "$#{price} \t\t #{product}"
end

# Symbol declaration
sym_apple_store = {:iphone => 800, :ipad => 900, :mackbook => 2000}
puts "\nWith Symbols\nPRICE \t\t ITEMS"
sym_apple_store.each do |product, price|
  puts "$#{price} \t\t #{product}"
end

# Another way
symf_apple_store = {iphone: 800, ipad: 900, mackbook: 2000}
puts "\nWith Symbols\nPRICE \t\t ITEMS"
symf_apple_store.each do |product, price|
  puts "$#{price} \t\t #{product}"
end

# Complex data structure with hashes
airconditioner = {
  type: 'ducted',
  temperature: 'artic',
  speeds: ['low', 'medium', 'high'],
  height: {
    measurement: 200.4,
    unit: 'cm'
  }
}

puts "#{airconditioner[:type].capitalize}" +
     "\t #{airconditioner[:temperature].capitalize}" +
     "\t #{airconditioner[:speeds]}" +
     "\t #{airconditioner[:height]}"
#print airconditioner[:temperature]