class Team < ApplicationRecord
  include AASM
  extend FriendlyId
  friendly_id :random_slug, use: :slugged

  has_many :players
  has_many :golfers, through: :players

  aasm column: 'status' do
    state :active, initial: :true
    state :inactive
    state :ready_to_play
    state :match_made
  end

  def random_slug
    SecureRandom.hex(4)
  end

  def team_handicap
    golfers.map(&:handicap).inject(:+) / players.count
  end
end
