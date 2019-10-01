require 'benchmark'
n = 35


def recursive_fib(n)
    if n <= 1
        return n
    else 
        return recursive_fib(n - 1) + recursive_fib(n - 2)
    end
end

puts recursive_fib(n)

def iterative_fib(n)
   # what happens if n = 5
    #  0 + 1 = 1
    #  1 + 1 = 2
    #  2 + 1 = 3
    #  3 + 2 = 5
    # result = 0
    # first = 0 
    # second = 1
    # n.times do 
    #     result = (first + second)
    #     puts "FIRST = #{first}"
    #     puts "SECOND = #{second}"
    #     puts "RESULTS = #{result}"
    #     puts "--------------"
    #     first = result
    #     second = first
    #     puts "RESULTS = #{result}"
    # end
    # result

  #   a = 0
  #   b = 1
  # n.times do
  #   puts "a = #{a}"
  #   # b = a + b
  #   puts "b = #{b}"
  #   puts "--------"
  #   a,b = b, a+b
  # end
  
  # a
  if n <= 1
		return n
	end

	fibArray = [0, 1]

	i = 0

	while i < n - 1
		fibArray.push(fibArray[i] + fibArray[i + 1] )
		i += 1
	end
	puts fibArray[-1] #last array
end
 

puts iterative_fib(n)
#do we need to put this at end? why?
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(n) }
  x.report("iterative_fib")  { iterative_fib(n)  }
end