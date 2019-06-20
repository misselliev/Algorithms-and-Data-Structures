require 'set'
# https://www.geeksforgeeks.org/sieve-of-eratosthenes/
def number_of_primes(arr)
    intersection = arr & arr_of_primes(arr)
    intersection.count
end

def arr_of_primes(arr)
    n = arr.max
    candidates = [*2..n]
    idx = 0 
    primes = [] 
    val = candidates[0]
    
    while val**2 <= (candidates.max) do
        primes << candidates.shift
        candidates = candidates.reject { |i| i % val == 0}
        val = candidates[0]
        
    end
    primes = primes + candidates
    primes
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

#puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

#puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3