# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # mySum = 0
  # arr.each { |a| mySum+=a }
  # return mySum

  mySum = 0
  for v in arr
  	mySum += v
  end
  return mySum

end

def max_2_sum arr
  # YOUR CODE HERE
  largest = 0
  largest2 = 0
  p1 = false
  p2 = false

  if arr.length <= 2
  	return sum(arr)
  end

  for v in arr
  	if p1 == false or v >= largest
  		largest2 = largest
  		largest = v
  		if p1 == true
  			p2 = true
  		end
  		p1 = true
  	elsif p2 == false or v >= largest2
  		largest2 = v
  		p2 = true
  	end
  end
  return largest + largest2

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index do |v1,i1|
  	arr.each_with_index do |v2,i2|
  		# puts "===== i1=#{i1} and i2=#{i2}"
	  	if i1 != i2
	  		# puts "-- #{arr[i1]} and #{arr[i2]} sums to #{arr[i1] + arr[i2]} and #{n}"
	  		if v1 + v2 == n
	  			# puts "Yaay"
	  			return true
	  		end
	  	end
	end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # puts "-- " + s + " -#{(/^a|^e|^i|^o|^u/i =~ s)}"
  if (/^[A-Za-z]/ =~ s) == 0
	if (/^a|^e|^i|^o|^u/i =~ s) == 0
	  	# puts "false"
	  	return false
	  else
	  	# puts "true"
	  	return true
	  end
  else
  	return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # puts s
  # puts (/[^01]/ =~ s)
  if (/[^01]/ =~ s) != nil or (/[01]+/ =~ s) == nil
  	# puts "invalid-false"
  	return false
  end

  if not (/[^0]/ =~ s) != nil
  	return true
  end

  if (/00$/ =~ s) == nil
  	# puts "false " + s
  	return false
  else
  	# puts "true " + s
  	return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn, price)
		if not isbn.instance_of? String or isbn == "" or price <= 0
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end
	def isbn
		return @isbn
	end
	def isbn=(isbn)
		@isbn = isbn
	end
	def price
		return @price
	end
	def price=(price)
		@price = price
	end
	def price_as_string
		return "$#{'%.02f' % @price}"
	end
		
end
