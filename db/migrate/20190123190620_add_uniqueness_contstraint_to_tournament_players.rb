class AddUniquenessContstraintToTournamentPlayers < ActiveRecord::Migration[5.2]
  def change
    add_index :tournament_players, [:player_id, :tournament_id], unique: true
  end
end
