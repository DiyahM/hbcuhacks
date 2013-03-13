class Company < ActiveRecord::Base
  attr_accessible :company_url, :image_url, :name
  validates :company_url, presence: true
  validates :image_url, presence: true
  validates :name, presence: true
end
