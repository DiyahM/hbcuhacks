class Event < ActiveRecord::Base
  attr_accessible :address, :desc, :end_date, :prizes, :start_date

  scope :upcoming, lambda { where("start_date > ?", DateTime.now).order("start_date ASC").limit(3) }
end
