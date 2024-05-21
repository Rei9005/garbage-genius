class SpotDate < ApplicationRecord
  belongs_to :spot
  has_many :spot_visits, dependent: :destroy

  validates :scheduled_time, presence: true

end
