require "test_helper"

class HeroImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hero_image = hero_images(:one)
  end

  test "should get index" do
    get hero_images_url, as: :json
    assert_response :success
  end

  test "should create hero_image" do
    assert_difference('HeroImage.count') do
      post hero_images_url, params: { hero_image: { image_link: @hero_image.image_link } }, as: :json
    end

    assert_response 201
  end

  test "should show hero_image" do
    get hero_image_url(@hero_image), as: :json
    assert_response :success
  end

  test "should update hero_image" do
    patch hero_image_url(@hero_image), params: { hero_image: { image_link: @hero_image.image_link } }, as: :json
    assert_response 200
  end

  test "should destroy hero_image" do
    assert_difference('HeroImage.count', -1) do
      delete hero_image_url(@hero_image), as: :json
    end

    assert_response 204
  end
end
