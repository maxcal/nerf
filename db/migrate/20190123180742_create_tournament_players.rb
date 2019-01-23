class CreateTournamentPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :tournament_players do |t|
      t.references :tournament, foreign_key: true
      t.references :player, foreign_key: true
      t.integer :score
      t.timestamps
    end
  end
end
