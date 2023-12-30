class Api::V1::PurposesController < ApplicationController

  before_action :set_purpose, only: %i[show] # show update destroy

  def index
    @purposes = Purpose.all 
    render json: @purposes
  end

  def show
    render json: @purpose
  end

private 

def set_purpose
  @purpose = Purpose.find(params[:id])
end

def purpose_params
  params.require(:purpose).permit(:decision, :why)
end

end