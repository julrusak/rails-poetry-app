class CreateMagnetPoems < ActiveRecord::Migration
  def change
    create_table :magnet_poems do |t|
      t.string :title, null:false
      t.text :text, null:false
      t.references :user, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
