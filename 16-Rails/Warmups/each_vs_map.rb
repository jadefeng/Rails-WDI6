bros = %w{hello bonjour nihao}

hello_each = bros.each do |b|
	puts "Hello and b!"
end 			# What goes into hello_each is the same as bros
p hello_each

hello_map = bros.map do |b|
	puts  "Hello and hello"
end
p hello_map

# map and each are different because maps stores the edits while each only pushes through the first array rather than the outcome