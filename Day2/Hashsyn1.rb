books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
# fill in code that will create a Hash that looks like:
#   {
#     :bruno => "Design as Art",
#     :neal => "Anathem",
#     ...
#   }
library = {}

authors.each do |x|
  library[authors[x].to_sym] = books[x]
end
puts library
