class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :title, null:false
      t.string :text, null:false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
