#write your code here

# echo function
def echo(words)
    words
end

# shout function
def shout(words)
    words.upcase
end

# repeat function
def repeat(words, number = 2)
    words_array = []
    number.times do
        words_array << words
    end
    words_array.join(" ")
end

# start_of_word function
def start_of_word(words, number)
    spell_words = ""
    number.times do |i|
        spell_words << words[i]
    end
    spell_words
end

# first_word function
def first_word(words)
    words.split(" ").first
end

# titleize function
def titleize(words)
    new_words_array = []
    little_title_words = %w[ the to and if no on a an in over ]

    words_array = words.split(' ')

    words_array.each_with_index do |word, i| 
        if i == 0
            new_words_array << word.capitalize
        elsif little_title_words.include? word
            new_words_array << word
        else
            new_words_array << word.capitalize
        end
    end
    new_words_array.join(' ')
end