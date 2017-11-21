class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams, id: false do |t|
      t.primary_key :team_id
      t.references :tournament_team, foreign_key: true
      t.string :team_name

      t.timestamps
    end
  end
end
