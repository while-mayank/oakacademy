class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.string :dob
      t.string :city
      t.string :language

      t.timestamps
    end
  end
end
