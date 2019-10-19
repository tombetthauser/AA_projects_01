require "byebug"

def is_prime?(num)
  return false if num < 2
  (2...num).each do |factor|
    return false if num % factor == 0
  end
  true
end

def nth_prime(num)
  primes = [2]
  while primes.length < num
    primes << next_prime(primes.last)
  end
  primes.last
end

def next_prime(num)
  (num+1..num**2).each do |n|
    return n if is_prime?(n)
  end
  nil
end

def prime_range(min, max)
  primes = []

  if is_prime?(min)
    primes << min 
  else
    primes << next_prime(min)
  end
  
  while primes.last < max
    primes << next_prime(primes.last)
  end

  primes.pop if primes.last > max

  primes
end