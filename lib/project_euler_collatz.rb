# n → n/2 (n is even)
# n → 3n + 1 (n is odd)


def even_next(n)
    return n/2
end

def odd_next(n)
    return (3*n) + 1
end

def next_value(n)
    if n % 2 == 0
        return even_next(n)
    else
        return odd_next(n)
    end
end

def collatz(n)
    array = [n]
    answer = n 
    while answer != 1 do
        answer = next_value(answer)
        array << answer
    end
    return array
end

def longest_collatz
    max = []
    answer = 0
    for i in 1..1000000 do
        current = collatz(i)
        if current.length > max.length
            max = current
            answer = i 
        end
    end
    return answer
end

# For efficiency could start at 1 million and delete all numbers involved in sequence from an array including all numbers and continue until answer is left