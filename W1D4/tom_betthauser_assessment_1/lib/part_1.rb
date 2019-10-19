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
    (num+1..num**2).each { |n| return n if is_prime?(n) }
end

def prime_range(min, max)
    range_arr = []
    is_prime?(min) ? range_arr << min : range_arr << next_prime(min)

    while range_arr.last < max
        range_arr << next_prime(range_arr.last)
    end

    range_arr.pop if range_arr.last > max
    range_arr
end