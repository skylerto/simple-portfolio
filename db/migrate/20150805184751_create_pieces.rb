class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.text :description
      t.date :created
      t.attachment :image

      t.timestamps null: false
    end
  end
end
