#write your code here
# regex = \b([^aeiou]|[qu])+

def translate input

  def pigize word
    beg = word[/\b([^aeiou]|[qu])+/].to_s
    pig = word[beg.length, word.length - beg.length] + beg + 'ay'
    word == word.capitalize ? pig.capitalize : pig
  end

  input.split.map do |w|
    punctuation = w[/\W$/].to_s
    w = punctuation != '' ? w[0...-1] : w 
    pigize(w) + punctuation
  end.join(' ')
end