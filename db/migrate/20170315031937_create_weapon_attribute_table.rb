class CreateWeaponAttributeTable < ActiveRecord::Migration
  def change
    create_table :weapon_attributes do |t|
    	t.integer :attribute_id
      t.string :label
      t.string :value_type
      t.string :zero_familiarity_max_value
      t.string :max_familiarity_max_value
      t.string :rarity
      t.string :notes
      t.string :sub_group
      t.datetime :creation_date
      t.datetime :update_date
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
