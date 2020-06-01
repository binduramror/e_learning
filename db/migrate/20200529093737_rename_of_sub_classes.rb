class RenameOfSubClasses < ActiveRecord::Migration[5.2]
  def change
  	rename_column :sub_classes, :sub_id, :subject_id
  end
end
