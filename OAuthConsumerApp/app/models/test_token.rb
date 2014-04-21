class TestToken < ConsumerToken
  TEST_SETTINGS = {
    :site => "http://lcub-dev-adam:3000",
    :request_token_path => "/oauth/request_token",
    :access_token_path => "/oauth/access_token",
    :authorize_path => "/oauth/authorize"
  }

  def self.consumer(options={})
    @consumer ||= OAuth::Consumer.new(credentials[:key], credentials[:secret], TEST_SETTINGS.merge(options))
  end

  def refresh_token=(refresh)
    puts "Refresh token = #{refresh}. Not persisting."
  end

  def expires_at=(expires)
    puts "Expires at: #{expires}"
  end

  def expires_in=(expires)
    puts "Expires in: #{expires}"
  end
end
