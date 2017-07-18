#write your code here
def add a, b
    result = a + b
end

def subtract a, b
    result = a - b
end

def sum array
    result = 0
    l = array.length - 1
    while l >= 0
        result = result + array[l]
        l = l - 1
    end
    result
end

def multiply array
    l = array.length - 1
    if l >= 0
        result = 1
        while l >= 0
            result = result * array[l]
            l = l - 1
        end
    else
        result = 0
    end
    result
end

def power num, exp
    result = num**exp
end

def factorial num
    if num == 0
        result = 1
    else
        result = 1
        while num > 0
            result = result * num
            num = num - 1
        end
    end
    result
end
