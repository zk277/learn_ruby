#write your code here
def pig_latin word
    vowels = ['a', 'e', 'i', 'o', 'u']
    puctuation = [".",",","!","?",";",":","'"]
    result = word
    a = 0
    p = ''
    capitalized = false

    if word[0] == word[0].upcase
        capitalized = true
    end

    if puctuation.include? word[-1]
        p = word[-1]
        result = result[0.. -2]
    end

    if vowels.include? word[0]
        result = result + 'ay'
    elsif (word[a] == 'q') and (word[a+1] == 'u')
        b = word[a] + word[a+1]
        result = result + b
        return result = result [(a+2).. -1] + 'ay' + p
    else
        while !vowels.include? word[a]
            if (word[a+1] == 'q') and (word[a+2] == 'u')
                b = word[a] + word[a+1] + word[a+2]
                result = result + b
                return result = result [(a+3).. -1] + 'ay' + p
            else
            b = word[a]
            result = result + b
            a = a + 1
            end
        end
    result = result [a.. -1] + 'ay'+ p
    end

    if capitalized == true
        result = result.downcase
        result[0] = result[0].upcase
    end

    result
end


def translate string

    if string.include? ' '
        array = string.split
        t_array = []
        array.each do |w|
            x = pig_latin w
            t_array.push x
        end
        result = t_array.join(' ')
    else
        result = pig_latin string
    end

    result
end

#translate 'quick,'
