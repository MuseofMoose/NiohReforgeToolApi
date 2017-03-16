class RemoveCreationAndUpdateDateFromWeaponAttributes < ActiveRecord::Migration
  def change
  	remove_column :weapon_attributes, :creation_date, :datetime
  	remove_column :weapon_attributes, :update_date, :datetime
  end
end
