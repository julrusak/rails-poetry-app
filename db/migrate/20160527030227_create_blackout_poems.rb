class CreateBlackoutPoems < ActiveRecord::Migration
  def change
    create_table :blackout_poems do |t|
      t.string :title, null:false
      t.text :text, null:false
      t.references :source, index: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
