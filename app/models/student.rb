class Student < ApplicationRecord
	has_one_attached :avatar
	
	enum degree: {"M.Sc.": 1, "B.E": 2}
end