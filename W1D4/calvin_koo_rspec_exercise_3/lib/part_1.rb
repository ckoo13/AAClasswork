def is_prime?(num)
    answer = true

    if num < 2
        return false
    end

    if num == 2
        return true
    end

    (2...num).each do |number|
        if num % number == 0
            answer = false
        end
    end

    answer
end

def nth_prime(n)
    array_of_primes = []
    i = 1
    prime = 2
    while i <= n
        if is_prime?(prime)
            array_of_primes << prime
            i += 1
        end

        prime += 1
    end

    array_of_primes[n - 1]
end

def prime_range(min, max)
    array_of_primes = []

    (min..max).each do |num|
        if is_prime?(num)
            array_of_primes << num
        end
    end

    array_of_primes
end