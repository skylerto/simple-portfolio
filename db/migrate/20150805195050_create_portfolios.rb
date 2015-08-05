class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.date :created
      t.attachment :image

      t.timestamps null: false
    end
  end
end
