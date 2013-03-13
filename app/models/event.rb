class Event < ActiveRecord::Base
  attr_accessible :address, :desc, :end_date, :prizes, :start_date, :title
  validates :title, presence: true
  validates :address, presence: true
  validates :start_date, presence: true

  scope :upcoming, lambda { where("start_date > ?", DateTime.now).order("start_date ASC").limit(3) }
end
