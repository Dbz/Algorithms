require_relative '../../algorithms/rate_limiter'

describe 'RateLimiter' do
  let(:rate_limitor) { RateLimiter.new }
  specify '#hit_endpoint does not allow 11 requests within 10 seconds' do
    request_statuses = []
    11.times do
      request_statuses << rate_limitor.hit_endpoint
    end

    request_statuses[0..9].each do |status|
      expect(status).to be_truthy
    end

    expect(request_statuses.last).to be_falsey
  end

  specify '#hit_endpoint allows 11 requests over 11 seconds' do
    request_statuses = []
    11.times do
      request_statuses << rate_limitor.hit_endpoint
      sleep(1)
    end

    request_statuses.each do |status|
      expect(status).to be_truthy
    end
  end
end
