class PagesController < ApplicationController
  def index
    @upcoming_events = Event.upcoming
    @companies = Company.featured
  end

  def about

  end
end
