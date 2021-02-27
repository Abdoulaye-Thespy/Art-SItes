# app/controllers/artplace_controller.rb
class ArtplacesController < ApplicationController
  before_action :set_artplace, only: [:show, :update, :destroy]

  # GET /artplaces
  def index
    @artplaces = ArtPlace.all
    render json:  @artplaces.to_json
  end

  # POST /artplaces
  def create
    @artplace = Artplace.create!(artplace_params)
    json_response(@artplace, :created)
  end

  # GET /artplaces/:id
  def show
    json_response(@artplace)
  end

  # PUT /artplaces/:id
  def update
    @artplace.update(artplace_params)
    head :no_content
  end

  # DELETE /artplaces/:id
  def destroy
    @artplace.destroy
    head :no_content
  end

  private

  def artplace_params
    # whitelist params
    params.permit(:title, :created_by)
  end

  def set_artplace
    @artplace = artplace_params.find(params[:id])
  end
end