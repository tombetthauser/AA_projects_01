def is_prime?(num)
    return false if num < 2
    (2...num).each { |factor| return false if num % factor == 0 }
    true
end

def nth_prime(n)
    primes = [2]

    while primes.length < n
        primes << next_prime(primes.last)
    end

    primes.last
end

def next_prime(num)
    (num+1...num**2).each do |num|
        return num if is_prime?(num)
    end
end

def prime_range(min, max)
    arr = [min]
    unless is_prime?(min) 
        arr[0] = next_prime(min)
    end

    while arr[-1] < max
        arr << next_prime(arr.last)
    end

    arr.pop if arr.last > max
    arr
end

