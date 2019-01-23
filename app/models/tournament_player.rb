class TournamentPlayer < ApplicationRecord
  belongs_to :tournament
  belongs_to :player
  validates_uniqueness_of :player_id, scope: :tournament_id
end
