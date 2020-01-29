library = {}
library["austen"] = ["Pride and prejudice", "Sense and sensibility"]
library["asimov"] = ["Robots of dawn", "I,Robot"]

authors = library.keys
puts "These are the authors in my catalogue:#{authors.join(",")}"

library.each do |author, books|
  puts "#{author.capitalize} wrote the books #{books.join(",")}"
end
