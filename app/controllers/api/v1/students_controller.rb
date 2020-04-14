class Api::V1::StudentsController < ApplicationController

	def create
		@student = Student.create!(student_params)
		render json: StudentSerializer.new(@student)
	end

	def index
		
	end

	def show

	end

	private

		def students
			@students ||= Student.all
		end

		def student
			@student ||= Student.find(params[:id])
		end

		def student_params
			params.require(:student).permit(:name, :dob, :degree)
		end
end