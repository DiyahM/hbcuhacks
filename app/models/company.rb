class Company < ActiveRecord::Base
  attr_accessible :company_url, :image_url, :name, :featured
  validates :company_url, presence: true
  validates :image_url, presence: true
  validates :name, presence: true
  has_many :sponsorships
  has_many :events, through: :sponsorships
  
  scope :featured, where(featured: true).limit(4)
end
