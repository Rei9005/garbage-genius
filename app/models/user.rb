class User < ApplicationRecord
  belongs_to :spot, optional: true
  has_many :alerts, dependent: :destroy
  has_many :spot_visits, dependent: :destroy

  # user name and password is handled by Devise
  # validates :name, presence: true
  # validates :address, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
