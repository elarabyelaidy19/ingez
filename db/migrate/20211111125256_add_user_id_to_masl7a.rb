class AddUserIdToMasl7a < ActiveRecord::Migration[5.1]
  def change
    add_column :masl7as, :user_id, :integer
  end
end
