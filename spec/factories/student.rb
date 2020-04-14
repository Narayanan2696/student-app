FactoryBot.define do
	factory :student, class: 'Student' do
		name { "narayanan" }
		dob { "1996-06-26" }
		degree { 1 }
	end
end