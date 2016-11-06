#write your code here

def add augend, addend
    augend + addend
end

def subtract minuend, subtrahend
    minuend - subtrahend
end

def sum array
    if array == []
        0
    else
        array.inject { |sum, n| sum + n }
    end
end

def multiply *args
    args.reduce(:*)
end

def power base, exponent
    base**exponent
end

def factorial number
    if number == 0
        1
    else
        (1..number).reduce(:*)
    end
end