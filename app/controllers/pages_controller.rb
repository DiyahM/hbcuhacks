class PagesController < ApplicationController
  def index
    @upcoming_events = Event.upcoming
    @companies = Company.first(4)
  end

  def about

  end
end
