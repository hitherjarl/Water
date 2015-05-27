class ChangeUserToUserId < ActiveRecord::Migration
  def change
    remove_column :waters, :user, :string
    add_column :waters, :user_id, :integer
  end
end
