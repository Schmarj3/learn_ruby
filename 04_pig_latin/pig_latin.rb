#write your code here

# translate function
def translate(word)
    vowels = %w[ a e i o u ]
    consonants = %w[ b c d f g h j k l m n p q r s t v w x y z ]
    new_word = []

    word.split(' ').each do |single_word|
        if vowels.include? single_word.chars[0]
            single_word << "ay"
        elsif consonants.include? single_word.chars[0]
            if single_word.chars[0] == "q" && single_word.chars[1] == "u"
                single_word << single_word[0..1] + "ay"
                single_word = single_word[2..-1]
            elsif single_word.chars[1] == "q" && single_word.chars[2] == "u"
                single_word << single_word[0..2] + "ay"
                single_word = single_word[3..-1]
            elsif consonants.include? single_word.chars[1]
                if consonants.include? single_word.chars[2]
                    single_word << single_word[0..2] + "ay"
                    single_word = single_word[3..-1]
                elsif
                    single_word << single_word[0..1] + "ay"
                    single_word = single_word[2..-1]
                end
            else
                single_word << single_word.chars[0] + "ay"
                single_word = single_word[1..-1]
            end
        end
        new_word << single_word
    end
    new_word.join(" ")
end