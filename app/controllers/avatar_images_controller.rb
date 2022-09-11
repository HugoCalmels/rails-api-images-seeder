class AvatarImagesController < ApplicationController
  before_action :set_avatar_image, only: [:show, :update, :destroy]

  # GET /avatar_images
  def index
    res = []
    @avatar_images = AvatarImage.all
    @avatar_images2 = AvatarImage.all
    @avatar_images3 = AvatarImage.all
    @avatar_images4 = AvatarImage.all
    @avatar_images5 = AvatarImage.all

    res = @avatar_images + @avatar_images2 + @avatar_images3 + @avatar_images4 +  @avatar_images5


    render json: res
  end

  # GET /avatar_images/1
  def show
    render json: @avatar_image
  end

  # POST /avatar_images
  def create
    @avatar_image = AvatarImage.new(avatar_image_params)

    if @avatar_image.save
      render json: @avatar_image, status: :created, location: @avatar_image
    else
      render json: @avatar_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /avatar_images/1
  def update
    if @avatar_image.update(avatar_image_params)
      render json: @avatar_image
    else
      render json: @avatar_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /avatar_images/1
  def destroy
    @avatar_image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avatar_image
      @avatar_image = AvatarImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avatar_image_params
      params.require(:avatar_image).permit(:image_link)
    end
end
