class Golfer < ApplicationRecord
  include AASM
  extend FriendlyId
  friendly_id :random_slug, use: :slugged

  devise :database_authenticatable, :registerable, :recoverable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  geocoded_by :zipcode
  after_validation :geocode

  has_many :roster_slots
  has_many :teams, through: :roster_slots

  validates_presence_of :zipcode

  aasm column: 'status' do
    state :active, initial: :true
    state :inactive
  end

  def random_slug
    SecureRandom.hex(4)
  end
end
