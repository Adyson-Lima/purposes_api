class Api::V1::PurposesController < ApplicationController

  before_action :set_purpose, only: %i[show] # show update destroy

  def index
    @purposes = Purpose.all 
    render json: @purposes
  end

  def show
    render json: @purpose
  end

  def create
    @purpose = Purpose.new(purpose_params)
    if @purpose.save
      render json: @purpose, status: :created, location: api_v1_purpose_url(@purpose)
    else
      render json: @purpose.errors, status: :unprocessable_entity
    end
  end

private 

def set_purpose
  @purpose = Purpose.find(params[:id])
end

def purpose_params
  params.require(:purpose).permit(:decision, :why)
end

end