# app/controllers/artplace_controller.rb
class ArtPlacesController < ApplicationController
  before_action :set_artplace, only: [:show, :update, :destroy]

  # GET /artplace
  def index
    @artplaces = ArtPlace.all
    json_response(@artplaces)
  end

  # POST /artplaces
  def create
    @artplace = Artplace.create!(artplace_params)
    json_response(@artplace, :created)
  end

  # GET /artplace/:id
  def show
    json_response(@artplace)
  end

  # PUT /todos/:id
  def update
    @artplace.update(artplace_params)
    head :no_content
  end

  # DELETE /todos/:id
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