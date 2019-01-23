class Tournament < ApplicationRecord
  has_many :tournament_players, dependent: :destroy
  has_many :players, through: :tournament_players
  accepts_nested_attributes_for :players,
    reject_if: proc { |attributes| attributes['name'].blank? }
end
