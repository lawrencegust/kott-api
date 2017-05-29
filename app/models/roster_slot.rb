class RosterSlot < ApplicationRecord
  belongs_to :golfer
  belongs_to :team

  validates_presence_of :golfer_id, :team_id
end
