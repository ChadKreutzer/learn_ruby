class Book
  attr_reader :title

  def title=(input)
    title_array = input.capitalize.split
    
    @title = title_array.map{|word| capitalize_non_small word}.join(' ')
  end
  
  private
  Small_words = /\b(an?d?|in|of|the)\b/
  
  def capitalize_non_small test_word
    
    if Small_words.match(test_word)
      test_word
    else
      test_word.capitalize
    end
  end
  
end

# class Book
#   attr_reader :title
#   def title=(input)
#     @title = input.capitalize.split.map{|x| /\b(an?d?|in|of|the)\b/.match(x) ? x : x.capitalize}*' '
#   end
# end