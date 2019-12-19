class Timer
  #write your code here

  # Get and set @seconds
  attr_accessor :seconds
  
  # Initialize a default value of zero
  def initialize
    @seconds = 0
  end

  def time_string
    Time.at(@seconds).gmtime.strftime('%R:%S')
  end

end
