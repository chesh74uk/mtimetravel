class TimelinesController < ApplicationController
  def index
    @timelines = Timeline.all
  end
end
