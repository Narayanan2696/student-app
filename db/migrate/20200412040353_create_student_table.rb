class CreateStudentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
    	t.string :name
    	t.date :dob
    	t.integer :degree

    	t.timestamps
    end
  end
end
