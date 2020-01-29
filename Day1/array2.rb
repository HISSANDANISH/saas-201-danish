books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
# fill in code that will print:
#   Design As Art was written by Bruno Munari
#   Anathem was written by Neal Stephenson
#   ...
books = books.map.with_index { |book, i| "#{book} was written by #{authors[i]}" }
puts books
