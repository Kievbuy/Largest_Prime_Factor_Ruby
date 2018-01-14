def prime_factors(n)
  prime_array = []    
  p = 2
  if n < 2
      return p
  end


  while p < n && p < 1000000
    if n % p == 0
      prime_array.push(p)
    end
  p +=1
  end
#puts prime_array.inspect
  primes = []
  
  prime_array.size.times do |i|
    if n > 1
      n = n / prime_array[i]
      primes.push(prime_array[i])
    end
  end
  return primes.last
end
#prime_factors(600851475143)
puts prime_factors(600851475143)