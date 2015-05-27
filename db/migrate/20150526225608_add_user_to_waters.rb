class AddUserToWaters < ActiveRecord::Migration
  def change
    add_column :waters, :user, :string
  end
end
