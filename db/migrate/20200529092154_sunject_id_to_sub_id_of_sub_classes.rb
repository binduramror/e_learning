class SunjectIdToSubIdOfSubClasses < ActiveRecord::Migration[5.2]
  def change
  	rename_column :sub_classes, :sunject_jd, :sub_id
  end
end
