class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players, id: false do |t|
      t.primary_key :player_id
      t.references :team, foreign_key: true
      t.references :tournament_player, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.integer :number
      t.string :citizenship
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
