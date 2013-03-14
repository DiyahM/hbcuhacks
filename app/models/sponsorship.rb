class Sponsorship < ActiveRecord::Base
  attr_accessible :company_id, :event_id
  belongs_to :company
  belongs_to :event
end
