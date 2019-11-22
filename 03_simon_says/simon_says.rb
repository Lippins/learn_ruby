#write your code here
def echo word
    word
end

def shout word
    word.upcase
end

def repeat word, times = 2
    reply = "#{word} " * times
    reply.slice(0..reply.length-2)
end

def start_of_word word, range
    word.slice(0..range-1)
end

def first_word sentence
    sentence.split(" ")[0]
end

def titleize sentence
    array = sentence.split(" ")
    little_words = ["or", "the", "and", "over", "of", "in", "on", "is"]
    i = 0
    while (i <array.length)
        if (array[0] == array[i] or !little_words.include?(array[i]))
            array[i] = array[i].capitalize
        end
        i += 1
    end
    array.join(" ")
end