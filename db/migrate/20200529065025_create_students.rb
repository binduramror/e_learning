class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :std_name
      t.string :std_class
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
