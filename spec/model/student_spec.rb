require 'rails_helper'
RSpec.describe Student, type: :model do

	it 'has valid degree' do
    student = create(:student)
    byebug
    expect(student.degree).to eq(1)
   end
end