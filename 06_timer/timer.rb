class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
      @seconds = 0
  end

  def time_string
      hours = @seconds / 3600
      minutes = (@seconds - (hours*3600))/ 60
      @seconds = @seconds % 60
      @time_string = '%02d:%02d:%02d' % [hours, minutes, @seconds]
  end

end
