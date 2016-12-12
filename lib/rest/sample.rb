# frozen_string_literal: true
module Rest
  class Sample < Base
  	def self.create(user_credentials, params, byte_data)
  		put(
  			"#{name.demodulize.downcase}",
  			byte_data,
  			headers(user_credentials['token']).merge('params' => params, 'Content-Type' => 'application/octet-stream')
  		)
		end
  end
end
