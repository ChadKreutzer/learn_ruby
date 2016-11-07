#write your code here

def echo input
  input
end

def shout input
  input.upcase
end

def repeat input, *args
  temp_array = []
  reps = args == [] ? 2 : args.first.to_i
  (0...reps).each { temp_array.push(input) }
  temp_array.join(' ')
end

def start_of_word input, range
  input[0, range]
end

def first_word input
  /\w*/.match(input).to_s
end

def titleize input
  # and over the
  temp = input.split
  temp.map! do |x|
    if /(and|over|the)/.match(x) == nil
      x.capitalize
    else
      x
    end
  end
  temp[0].capitalize!
  temp.join(' ') 
end