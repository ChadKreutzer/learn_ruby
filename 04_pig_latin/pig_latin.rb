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

# def translate(x)
#   vowels = "a" || "e" || "i" || "o" || "u"
#   test = []
#   x.split.each do |x|
#     if x[0].include? vowels
#       test.push(x + 'ay')
#     elsif !x[0].include?(vowels) && x[1].include?(vowels)
#       test.push(x[1..x.length] + x[0] + 'ay')
#     elsif !x[0].include?(vowels) && !x[1].include?(vowels)
#       test.push(x[2..x.length] + x[0..1] + 'ay')
#     end
#   end
#   test.join(' ')
# end