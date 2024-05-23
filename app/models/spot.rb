class Spot < ApplicationRecord
  has_many :users
  has_many :spot_dates, dependent: :destroy
  has_many :spot_visits, through: :spot_dates

  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
