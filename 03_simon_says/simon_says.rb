#write your code here
def echo word
    word
end

def shout word
    word.upcase
end

def repeat (word, number = 2)
    result = ''
    while number > 0
        result = result + word
        if number > 1
            result = result + ' '
        end
        number = number -  1
    end
    result
end

def start_of_word word, num
    result = ''
    a = 0
    while a < num
        result = result + word[a]
        a = a + 1
    end
    result
end

def first_word string
    result = ''
    l = string.length
    a = 0
    while string[a] != ' '
        result = result + string[a]
        a = a + 1
    end
    result
end

def titleize string
#    result = string.split.map(&:capitalize)*' '
    array = string.split
    c_array = []
    count = 1
    array.each do |word|
        if (count == 1)
            c_array.push word.capitalize
        elsif ((word != 'and') and (word != 'or') and (word != 'the') and (word != 'over'))
            c_array.push word.capitalize
        else
            c_array.push word
        end
        count = count + 1
    end
    result = c_array.join(' ')
    result
end
