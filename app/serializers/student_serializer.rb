class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :dob, :degree

  # attributes :name do |object|
  # 	"name:" + object.name
  # end
end
