class Student < ApplicationRecord
	enum degree: {"M.Sc.": 1, "B.E": 2}
end