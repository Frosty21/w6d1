@fibonacci_end = 0

def benchmark
  start_time = Time.now
  # block.call
  yield
  end_time = Time.now
  end_time = end_time - start_time
end

# checks for negative number
def if_negative
	if @fibonacci_end < 0
	puts "Don't be silly, please enter a positive integer"
	@fibonacci_end = gets.chomp.to_i
	if_negative
	end
end

# Fibonacci sequence operation
def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

def iterations_fibonacci
puts "Calculate Fibonacci Sequence - How many iterations?"
	@fibonacci_end = gets.chomp.to_i
if_negative
end
iterations_fibonacci
Running_time = benchmark { fibonacci(@fibonacci_end) }
puts "fibonacci #{@fibonacci_end} took #{Running_time} seconds."
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"