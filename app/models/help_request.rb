class HelpRequest < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :helper, class_name: "User", optional: true
  belongs_to :spot_date
  has_one :spot, through: :spot_date

  validates :asker, presence: true
  validates :spot_date, presence: true

end
