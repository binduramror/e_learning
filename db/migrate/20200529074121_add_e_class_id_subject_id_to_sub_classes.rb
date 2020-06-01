class AddEClassIdSubjectIdToSubClasses < ActiveRecord::Migration[5.2]
  def change
  	create_table :sub_classes do |t|
  	  t.integer :e_class_id
      t.integer :sunject_jd
    end
  	
  end
end
