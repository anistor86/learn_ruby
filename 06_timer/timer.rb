class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = @seconds / (60**2)
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(num)
    return "%02d" % num
  end
end
