class Tournament < ApplicationRecord
  has_many :player_tournaments
  has_many :players, through: :player_tournaments
end
