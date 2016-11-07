#write your code here
# regex = \b([^aeiou]|[qu])+

def translate input

  def pigize word
    beg = word[/\b([^aeiou]|[qu])+/].to_s
    pig = word[beg.length, word.length - beg.length] + beg + 'ay'
    pig
  end

  input.split.map do |w|
    pigize(w)
  end.join(' ')
end