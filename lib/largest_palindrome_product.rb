def largest_palindrome_product
  a = 999
	x = 1 #outer loop counter
	largest = 0
  product = 0

	while x <= a
		y = 1 #reset inner loop
		while y <= a
			product = x * y
			prod = product.to_s
			if prod == prod.reverse
				if prod.to_i > largest
					largest = product
				end
			end
			y += 1 #increment inne rloop
		end
		x += 1 #increment outer loop
	end
  return largest
end