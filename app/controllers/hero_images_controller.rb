class HeroImagesController < ApplicationController
  before_action :set_hero_image, only: [:show, :update, :destroy]

  # GET /hero_images
  def index
    @hero_images = HeroImage.all

    render json: @hero_images
  end

  # GET /hero_images/1
  def show
    render json: @hero_image
  end

  # POST /hero_images
  def create
    @hero_image = HeroImage.new(hero_image_params)

    if @hero_image.save
      render json: @hero_image, status: :created, location: @hero_image
    else
      render json: @hero_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hero_images/1
  def update
    if @hero_image.update(hero_image_params)
      render json: @hero_image
    else
      render json: @hero_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hero_images/1
  def destroy
    @hero_image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_image
      @hero_image = HeroImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hero_image_params
      params.require(:hero_image).permit(:image_link)
    end
end
