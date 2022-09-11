class PostImagesController < ApplicationController
  before_action :set_post_image, only: [:show, :update, :destroy]

  # GET /post_images
  def index
    res = []
    @post_images = PostImage.all
    @post_images2 = PostImage.all
    @post_images3 = PostImage.all
    @post_images4 = PostImage.all
    @post_images5 = PostImage.all
    @post_images6 = PostImage.all
    @post_images7 = PostImage.all
    @post_images8 = PostImage.all
    @post_images9 = PostImage.all
    @post_images10 = PostImage.all

    res = @hero_images + @hero_images2 + @hero_images3 + @hero_images4 +  @hero_images5 + @hero_images6 + @hero_images7 + @hero_image38 + @hero_images9 +  @hero_images10


    render json: res
  end

  # GET /post_images/1
  def show
    render json: @post_image
  end

  # POST /post_images
  def create
    @post_image = PostImage.new(post_image_params)

    if @post_image.save
      render json: @post_image, status: :created, location: @post_image
    else
      render json: @post_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_images/1
  def update
    if @post_image.update(post_image_params)
      render json: @post_image
    else
      render json: @post_image.errors, status: :unprocessable_entity
    end
  end



  # DELETE /post_images/1
  def destroy
    @post_image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_image
      @post_image = PostImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_image_params
      params.require(:post_image).permit(:image_link)
    end
end
