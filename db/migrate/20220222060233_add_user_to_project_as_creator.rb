class AddUserToProjectAsCreator < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :creator, foreign_key: { to_table: :users }
  end
end
