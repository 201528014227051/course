def sum(array)
=begin
	 takes an array of integers as an argument 
	 and returns the sum of its elements. For 
	 an empty array it should return zero.
=end
		
	if array.length==0
		#return 0
		puts 0
	else
		sum_=0
		i=0
		while i<array.length
			sum_+=array[i]
			i=i+1
		end 
		#return sum_
		puts sum_
	end

end

puts "test for sum(array):"
=begin
  test for sum(array)
=end
new_array=Array(0..9)

sum new_array 

zero_array=Array.new(0)

sum zero_array

one_array=Array.new(1)
one_array[0]=5

random_array=Array.new(5)
random_array=[2,6,5,7,9]
def max_2_sum(array)
=begin
 takes an array of integers as an argument and returns the sum of
  its two largest elements. For an empty array it should return zero.
   For an array with just one element, it should return that element.

rescue Exception => e
	
end
=end

	if array.length==0
		puts 0
	elsif array.length==1
		puts array[0]
	else
        sorted_array_123=array.sort
        sotted_array_321=sorted_array_123.reverse
        puts sotted_array_321[0]+sotted_array_321[1]
	end

			
end

=begin
this is test for max_2_sum
rescue Exception => e
	
end
=end

puts "test for max_2_sum(array):"
max_2_sum random_array

max_2_sum  one_array

max_2_sum zero_array



def sum_to_n?(array,n)
=begin
	 takes an array of integers and an additional integer, n,
	  as arguments and returns true if any two elements in the 
	  array of integers sum to n. An empty array should sum to
	   zero by definition.

rescue Exception => e
	
end
=end

if array.length==0
	puts 0
	if n==0
		puts true
	else
		puts false
	end
else
	if array.length%2==0
		length_search=array.length/2-1
	else
		length_search=array.length/2
	end

	i=0
    flag=0
	
    begin
    	search_num=n-array[i]
    	if array.include?(search_num)==true
    	  flag=1
        else
        	i+=1
        end
    end until i>length_search||flag==1
    

    if flag==1
    	puts true
    else
    	puts false
    end
end
end


puts "test for sum_to_n?(array,n):"
sum_to_n? new_array,29
sum_to_n? new_array,9
sum_to_n? new_array,10
sum_to_n? one_array,5

def hello(name)
=begin
 takes a string representing a name and 
 returns the string "Hello, " concatenated with the name.

rescue Exception => e
	
end
=end

puts "Hello,#{name}"


end

puts "test for hello(name):"
hello "wbq"
hello "王斌强"


def starts_with_consonant?(s)
=begin
takes a string and returns true if it starts with a consonant 
and false otherwise. (For our purposes, a consonant is any letter
 other than A, E, I, O, U.) NOTE: be sure it works for both upper 
 and lower case and for nonletters!

rescue Exception => e
	
end
=end
if 
	/[\p{L}&&[^aeiouAEIOU]]/=~s[0]
	return true
else
	return false
end

end

starts_with_consonant?('asddff')

def binary_multiple_of_4?(s)
=begin
takes a string and returns true if the string represents a binary 
number that is a multiple of 4. NOTE: be sure it returns false if
the string is not a valid binary number!	
rescue Exception => e
	
end
=end
 if  /[0*1*]/=~s
 	if /00\Z/=~s
 		return true
 	else
 		return false
 	end
 	else
 		return false
 	end
end

binary_multiple_of_4?(101110)
=begin
	
Define a class BookInStock which represents a book with an ISBN number,
isbn, and price of the book as a floating-point number, price, as attributes.

The constructor should accept the ISBN number (a string, since in real life ISBN numbers can begin with zero and can include hyphens) 
as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) 
if the ISBN number is the empty string or if the price is less than or equal to zero. Include the proper getters and setters for these attributes.

Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places,
that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".

=end

class BookInStock

   def initialize(isbn,price)
   	@book_isbn=isbn
   	@book_price=price
   	if @book_price<=0.0||@book_isbn==""
   		puts "ArgumentError"
   	else

   end
   end

   def price_as_string
   	puts "$%.2f" % @book_price
   end
end

#Book1=BookInStock.new("1234","3.4")
#Book2=BookInStock.new(232,99.99)

#Book1.price_as_string