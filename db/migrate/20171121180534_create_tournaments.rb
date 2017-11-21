class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments, id: false do |t|
      t.string :tournament_name
      t.primary_key :tournament_id

      t.timestamps
    end
  end
end
