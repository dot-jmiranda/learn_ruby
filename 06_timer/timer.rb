# frozen_string_literal: true

class Timer
  # write your code here
  attr_reader :seconds

  def initialize
    @seconds = 0
  end

  attr_writer :seconds

  def time_string
    n = @seconds
    hours = 0
    minutes = 0
    seconds = 0

    if n > 59
      seconds = n % 60
      n /= 60
      if n > 59
        minutes = n % 60
        n /= 60
        hours = n
      else
        minutes = n
      end

      puts seconds.to_s
      puts minutes.to_s
      puts hours.to_s
      "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
    else
      seconds = @seconds
      "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
    end
  end

  def padded(n)
    if n.to_s.length == 1
      "0#{n}"
    else
      n.to_s
    end
  end
end
