class PagesController < ApplicationController
  def index
    @upcoming_events = Event.upcoming
  end

  def about

  end
end
