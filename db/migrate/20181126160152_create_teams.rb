class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :record
      t.string :location

      t.timestamps
    end
  end
end
