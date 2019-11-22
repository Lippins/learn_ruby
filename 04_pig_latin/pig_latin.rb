#write your code here
def translate sentence
    vowels = ["a", "e", "i", "o", "u"]
    words = sentence.split(" ")
    
    words.map! do |word|
        if (word.include?("qu"))
            word = word[word.index("u")+1..-1] +  word[0..word.index("u")] +"ay"
        elsif (vowels.include?(word[0]))
            word += "ay"
        elsif (!vowels.include?(word[0]) && !vowels.include?(word[1]))
            if (!vowels.include?(word[2]))
                word = word[3..-1] + word[0..2] + "ay"
            else
                word = word[2..-1] + word[0..1] + "ay"
            end
            word
        elsif (not vowels.include?(word[0]))
            word = word[1..-1] + word[0] + "ay"
        end
    end
    words.join(" ")
end