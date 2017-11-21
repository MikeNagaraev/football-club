class CreateTournamentTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_teams, id: false do |t|
      t.primary_key :tournament_team_id
      t.references :tournament, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
