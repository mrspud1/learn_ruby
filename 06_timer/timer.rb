class Timer
  #write your code here
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  def seconds
    @seconds
  end
  def seconds= input
    @seconds = input.to_i
  end
  def time_string
    @minutes = (@seconds/60.0).floor
    @hours = (@minutes/60.0).floor
    @seconds = @seconds - @minutes*60
    @minutes = @minutes - @hours*60

    if @hours < 10
      @hours = "0" + @hours.to_s
    end
    if @minutes < 10
      @minutes = "0" + @minutes.to_s
    end
    if @seconds < 10
      @seconds = "0" + @seconds.to_s
    end
    @display = @hours.to_s + ":" + @minutes.to_s + ":" + @seconds.to_s
  end
end
