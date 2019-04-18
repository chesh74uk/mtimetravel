class StagesController < ApplicationController
  before_action :set_stage, only: [:show, :edit, :update, :destroy]
  
  def new
    @timeline = Timeline.find(params[:timeline_id])
    @stage = Stage.new
    #@timeline.build_stage
  end
  
  def create
      @timeline = Timeline.find(params[:timeline_id])
      @timeline.stages << Stage.new(stage_params)
      respond_to do |format|
        if @timeline.save
          format.html { redirect_to timeline_path(@timeline), notice: 'Stage saved' }
        else
          format.html { redirect_to new_timeline_stage_path, notice: 'Oops!' }
        end
      end
    end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage
      @stage = Stage.find(params[:id])
    end
  
   # Never trust parameters from the scary internet, only allow the white list through.
    def stage_params
      params.require(:stage).permit(:stagename, :scenario)
    end
end
