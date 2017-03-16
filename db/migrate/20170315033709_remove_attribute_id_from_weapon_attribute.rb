class RemoveAttributeIdFromWeaponAttribute < ActiveRecord::Migration
  def change
  	remove_column :weapon_attributes, :attribute_id, :integer
  end
end
