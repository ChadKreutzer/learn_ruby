class Book
# write your code here

  def title
    @title
  end

  def title=(input)
    temp = input.split
    small_words = /(\ba\b|\ban\b|\band\b|\bin\b|\bof\b|\bthe\b)/
    temp.map! do |x|
      if small_words.match(x) == nil
        x.capitalize
      else
        x
      end
    end
    temp[0].capitalize!
    @title = temp.join(' ')    
  end
end
