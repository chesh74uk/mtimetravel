class TimelinesController < ApplicationController
  before_action :set_timeline, only: [:show, :edit, :update, :destroy]
  
  def index
    @timelines = Timeline.all
  end
  
  def new
    @timeline = Timeline.new
  end
  
  # POST /meetings
  def create
    @timeline = Timeline.new(timeline_params)

    respond_to do |format|
      if @timeline.save
        @timelines = Timeline.all
        format.html { render :index, notice: 'Timeline was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeline
      @timeline = Timeline.find(params[:id])
    end
  
   # Never trust parameters from the scary internet, only allow the white list through.
    def timeline_params
      params.require(:timeline).permit(:timelinename)
    end
  
  
end
