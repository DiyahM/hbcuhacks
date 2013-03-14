class Event < ActiveRecord::Base
  attr_accessible :address, :desc, :end_date, :prizes, :start_date, :title, :registration_url, :company_ids
  validates :title, presence: true
  validates :address, presence: true
  validates :start_date, presence: true

  has_many :sponsorships
  has_many :companies, through: :sponsorships
  scope :upcoming, lambda { where("start_date > ?", DateTime.now).order("start_date ASC").limit(3) }
end
