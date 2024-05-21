class Alert < ApplicationRecord
  belongs_to :spot_date
  belongs_to :user

  validates :message, presence: true
end
