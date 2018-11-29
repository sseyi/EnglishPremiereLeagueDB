class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.string :standings
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
