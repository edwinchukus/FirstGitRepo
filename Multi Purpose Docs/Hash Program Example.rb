
my_array = { "Edwin" => "Ijeoma", "Arinze" => "Blessing",
"Onyekachi" => "Ann", "Chidubem" => "Yet to come"}

my_array.each do
|x, y|
puts "#{x} => #{y}"
end 


my_hash = Hash.new
my_hash["My Son"] = "Master Chidubem"
my_hash["My wife"] = "Mrs Ijeoma"

puts my_hash["My Son"]


prices = { 
  "apple" => 0.52,
  "banana" => 0.23,
  "kiwi" => 1.42
}

prices["ube"] = 0.85

puts prices["ube"]
puts prices["ube"] += 1
puts prices["ube"]



puts "Enter the text here:..."
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
words.each do
    |word| frequencies[word] += 1
end

frequencies = frequencies.sort_by do 
    |x, count| count
end
frequencies.reverse!



Vital Ruby codes