require 'httparty'

class CollegeList
	include HTTParty

	attr_accessor :url, :key

	def initialize(options)
		@url = options[:url]
		@key = options[:key]
	end

	def get!(params)
		response = self.class.get(url, {query: {"api-key": key}.merge!(params)})
		response.parsed_response
	end

end