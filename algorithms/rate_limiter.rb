# Create a class that limits hitting an external API to
# 10 attempts per second.

class RateLimiter
  def initialize
    @request_times = Array.new(10) { 0 }
  end

  def hit_endpoint
    current_time = Time.now.to_i
    if current_time - @request_times.first >= 10
      @request_times.shift
      @request_times << current_time
      true
    else
      false
    end
  end
end
