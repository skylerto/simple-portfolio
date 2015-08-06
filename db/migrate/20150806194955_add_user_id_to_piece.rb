class AddUserIdToPiece < ActiveRecord::Migration
  def change
    add_reference :pieces, :user, index: true, foreign_key: true
  end
end
