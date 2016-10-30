class RemoveCreationDateAndUpdateDateFromTeams < ActiveRecord::Migration
  def change
  	remove_column :teams, :creation_date, :datetime
  	remove_column :teams, :update_date, :datetime
  end
end
