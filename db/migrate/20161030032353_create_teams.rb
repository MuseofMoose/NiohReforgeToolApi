class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.string :slack_key
      t.datetime :creation_date
      t.datetime :update_date
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
