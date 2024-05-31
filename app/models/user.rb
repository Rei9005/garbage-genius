class User < ApplicationRecord
  belongs_to :spot, optional: true
  has_many :alerts, dependent: :destroy
  has_many :spot_visits, dependent: :destroy



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_create :set_default_alert
  after_create_commit :check_geocode

  def set_default_alert
    self.update(
    evening_alert: true,
    morning_alert: true,
    morning_alert_at: Time.parse('8am'),
    evening_alert_at: Time.parse('9pm')
    )
  end


  def send_alerts
    send_morning_alert if Time.now.strftime("%H:%M") == morning_alert_at.strftime("%H:%M")
    send_evening_alert if Time.now.strftime("%H:%M") == evening_alert_at.strftime("%H:%M")
  end

  private

  # set fall back geocode location if geocoder fail on production during demo day
  def check_geocode
    self.latitude = 35.6549766 if latitude.nil?
    self.longitude = 139.7368552 if longitude.nil?
    save
  end

  def send_morning_alert
    LineNotificationService.new(line_id).send("Good morning!")
  end

  def send_evening_alert
    LineNotificationService.new(line_id).send("Good evening!")
  end


end
