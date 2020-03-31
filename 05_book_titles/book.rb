class Book
# write your code here
    attr_reader :title
    
    # title funciton - reused code from simon says and added of
    def title=(title)
        new_title_array = []
        little_title_words = %w[ the to and if no on a an in over of ]

        title_array = title.split(' ')

        title_array.each_with_index do |word, i| 
            if i == 0
                new_title_array << word.capitalize
            elsif little_title_words.include? word
                new_title_array << word
            else
                new_title_array << word.capitalize
            end
        end
        @title = new_title_array.join(' ')
    end
end