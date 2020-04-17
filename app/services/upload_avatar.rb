require 'aws-sdk-s3'

class UploadAvatar
	attr_accessor :student, :file
	def initialize(options = {})
		@student = options[:student]
		@file = options[:avatar]
	end

	def upload()
		upload_avatar
	end

	private

		def upload_avatar()
			s3 = Aws::S3::Resource.new(region: ENV['AWS_S3_BUCKET_REGION'])
			path = 'resumes/narayanan.pdf'
			# byebug
			s3.bucket('student-file').object(path).upload_file(file)
			# s3.put_object(bucket: 'student-file',
   #                key: path,
   #                body: student.avatar.attach(file),
   #                acl: 'public')
			
		end
	
end