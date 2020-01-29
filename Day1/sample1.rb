names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
# fill in code that will return a new array of the full names:
#   ["Jhumpa Lahiri", "J.K Rowling", ...]
new_names = names.map { |i| i.join(" ") }
new_names.each { |x| puts x }
