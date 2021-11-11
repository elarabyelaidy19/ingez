class AddTeamIdToMasl7a < ActiveRecord::Migration[5.1]
  def change
    add_column :masl7as, :team_id, :integer
  end
end
