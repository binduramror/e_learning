class AddClassIdToSutudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :e_class_id, :integer
  end
end
