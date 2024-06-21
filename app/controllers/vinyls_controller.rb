class VinylsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @vinyls = Vinyl.all
    render json: @vinyls
  end

  def show
    @vinyl = Vinyl.find(params[:id])
    render json: @vinyl
  end
end
