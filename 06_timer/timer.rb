class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
  def time_string    
    hours = (@seconds / 3600)
    minutes = ((@seconds - hours * 3600) / 60)
    seconds = (@seconds - hours * 3600 - minutes * 60)
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"      
  end
  
  def padded num
      num < 10 ? '0' + num.to_s : num.to_s
  end
  
end
