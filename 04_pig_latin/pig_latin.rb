#write your code here
# regex = \b([^aeiou]|[qu])+

def translate input
  input.split.map do |w|
    punctuation = w[/\W$/]
    w = punctuation ? w[0...-1] : w 
    pigize(w) + punctuation.to_s
  end.join(' ')
end

def pigize word
  beg = word[/\b([^aeiou]|[qu])+/].to_s
  pig = word[beg.length, word.length - beg.length] + beg + 'ay'
  word == word.capitalize ? pig.capitalize : pig
end
