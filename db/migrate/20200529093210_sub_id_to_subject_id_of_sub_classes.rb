class SubIdToSubjectIdOfSubClasses < ActiveRecord::Migration[5.2]
  def change
  	rename_column :sub_classes, :sub_jd, :subject_id
  end
end
