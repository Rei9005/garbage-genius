class SpotVisit < ApplicationRecord
  belongs_to :spot_date
  belongs_to :user

  validates :time, presence: true
end
