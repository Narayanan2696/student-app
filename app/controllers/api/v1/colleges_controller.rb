class Api::V1::CollegesController < ApplicationController

	def index
		render json: fetch_college_list
	end

	private

		def fetch_college_list
			@fetch_college_list ||= CollegeList.new({url: ENV["COLLEGE_ENDPOINT"], key: ENV["COLLEGE_KEY"]}).get!(college_params)
		end

		def college_params
			params.permit( :format, :offset, :limit)
		end
end