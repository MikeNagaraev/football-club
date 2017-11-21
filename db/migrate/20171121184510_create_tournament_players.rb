class CreateTournamentPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_players, id: false do |t|
      t.primary_key :tournament_player_id
      t.integer :goals
      t.integer :assists
      t.integer :yellow_cards
      t.integer :red_cards
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
