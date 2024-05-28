class SpotDate < ApplicationRecord
  belongs_to :spot
  has_many :spot_visits, dependent: :destroy

  validates :scheduled_time, presence: true



  def average_pickup_time
    # get all the spot_dates for a specific day of the week
    days = spot.spot_dates.where("extract(dow from date) = ?", date.wday)
    # get all the times that people registered for those days
    times = SpotVisit.where(spot_date: days).pluck(:time)
    # returning the normal scheduled time if no one has registered??
    return scheduled_time if times.empty?
    # get the average of timestamps
    average_time = times.map(&:to_i).sum / times.count
    # convert back into time
    Time.at(average_time)
  end


end

