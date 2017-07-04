class Timer
  #write your code here
  attr_accessor :seconds
  attr_accessor :minutes
  attr_accessor :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    convert
    stringify(@hours) + ":" + stringify(@minutes) + ":" + stringify(@seconds)
  end

  def convert
    if seconds > 59
      @minutes = @seconds / 60
      @seconds = @seconds - (@minutes*60)
    end
    if minutes > 59
      @hours = @minutes / 60
      @minutes = @minutes - (@hours * 60)
    end
  end

  def stringify time
    if time < 10
      "0" + time.to_s
    else
      time.to_s
    end
  end

end
