#write your code here
def add num1, num2
    num1 + num2
end

def subtract  num1, num2
    num1 - num2
end

def sum array
    total = 0
    array.each do |num|
        total += num
    end
    total
end

def multiply (*numbers)
    total = 1
    numbers.each do |num|
        total *= num
    end
    total
end

def power num1, num2
    num1 ** num2
end

def factorial num
    if (num == 0)
        num = 1
    else
        i = num
        while (i > 1)
            num *= num -1
        end
    end
    num
end