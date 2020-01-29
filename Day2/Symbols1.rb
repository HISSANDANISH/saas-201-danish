a = :name
c = :"multiple words"
c = [:x, :y]
library = {
  :austen => ["a", "b"],
}
library[:rowling] = ["x"]
puts library
