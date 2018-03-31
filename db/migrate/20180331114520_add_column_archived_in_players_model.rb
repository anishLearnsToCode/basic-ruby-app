class AddColumnArchivedInPlayersModel < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :archived, :boolean
  end
end
