class CreateEClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :e_classes do |t|
      t.string :title

      t.timestamps
    end
  end
end
