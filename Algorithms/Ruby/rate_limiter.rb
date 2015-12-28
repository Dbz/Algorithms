class MyRateLimitedService
  # Create a class that limits hitting an external API to 
  # 10 attempts per second.

  MAX_ATTEMPTS = 10
  attr_accessor :times, :start_time, :end_time
  
  def initialize
    @times = []
    @start_time = 0
    @end_time = 0
  end

  def hit_my_endpoint
    if make_valid_request?
      make_request
    else
      puts "fails!"
    end
  end
  
  private
  def increment_times
    time_in_seconds = Time.now.to_i
    @times << time_in_seconds
    @start_time = time_in_seconds - 1
    @end_time = time_in_seconds
  end

  def valid_range?(start_time, end_time)
    times = @times.filter do |time|
      time < start_time || end_time > time
    end
    times.length <= MAX_ATTEMPTS
  end
  
  def make_valid_request?
    valid_range?(@start_time, @end_time)
  end

  def make_request
    puts "ok!"
    increment_times
  end 
end