class Book
    attr_accessor :title
    def initialize
        @title = "Currently Unassigned"
    end
    
    def title=(sentence)
        words = sentence.split(" ")
        lesser_words = ["an", "a", "the", "in", "for", "of", "and"]
        words[0] = words[0].capitalize
        words.map! do |word|
            if (!lesser_words.include?(word))
                word.capitalize
            else
                word
            end
        end
        @title = words.join(" ")
    end
end
