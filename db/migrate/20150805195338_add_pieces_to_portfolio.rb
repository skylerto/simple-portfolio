class AddPiecesToPortfolio < ActiveRecord::Migration
  def change
    add_reference :pieces, :portfolio, index: true, foreign_key: true
  end
end
