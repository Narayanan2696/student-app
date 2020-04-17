class Api::V1::StudentsController < ApplicationController

	def create
		# student_params
		@student = Student.create!(student_params)
		# UploadAvatar.new({student: @student, avatar: permitted_params[:avatar]).upload()
		@student.avatar.attach(permitted_params[:avatar])
		@student.update!(url: url_for(student.avatar))
		render json: StudentSerializer.new(@student)
	end

	def index
		
	end

	def show
		render json: student.avatar
	end

	private

		def students
			@students ||= Student.all
		end

		def student
			@student ||= Student.find(params[:id])
		end

		def permitted_params
			params.permit(:avatar, :json)
		end

		def student_params
			JSON.parse(params[:json]) if(permitted_params[:json])
		end
end