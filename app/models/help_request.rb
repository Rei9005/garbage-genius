class HelpRequest < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :helper, class_name: "User", optional: true
  # The above line will make validation fail unless it is made explicitly optional
  belongs_to :spot_date
  has_one :spot, through: :spot_date

  validates :asker, presence: true
  validates :spot_date, presence: true

  enum request_status: { pending: 'pending', accepted: 'accepted'}, _default: :pending
end
