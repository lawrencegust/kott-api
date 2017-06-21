class Team < ApplicationRecord
  include AASM
  extend FriendlyId
  friendly_id :random_slug, use: :slugged

  has_many :roster_slots
  has_many :golfers, through: :roster_slots

  aasm column: 'status' do
    state :active, initial: :true
    state :inactive
    state :ready_to_play
  end

  def random_slug
    SecureRandom.hex(4)
  end
end
