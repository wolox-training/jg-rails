# app/authentication/authentication_token_manager.rb
class AuthenticationTokenManager
  class << self
    def encode(payload)
      puts "payload:"
      puts payload
      puts Rails.application.secrets.secret_key_base
      JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end

    def decode(token)
      payload = JWT.decode(token, Rails.application.credentials.secret_key_base)[0]
      AuthenticationDecodedToken.new(payload)
    rescue
      nil
    end
  end
end