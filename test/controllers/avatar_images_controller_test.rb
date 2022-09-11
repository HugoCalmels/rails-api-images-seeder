require "test_helper"

class AvatarImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avatar_image = avatar_images(:one)
  end

  test "should get index" do
    get avatar_images_url, as: :json
    assert_response :success
  end

  test "should create avatar_image" do
    assert_difference('AvatarImage.count') do
      post avatar_images_url, params: { avatar_image: { image_link: @avatar_image.image_link } }, as: :json
    end

    assert_response 201
  end

  test "should show avatar_image" do
    get avatar_image_url(@avatar_image), as: :json
    assert_response :success
  end

  test "should update avatar_image" do
    patch avatar_image_url(@avatar_image), params: { avatar_image: { image_link: @avatar_image.image_link } }, as: :json
    assert_response 200
  end

  test "should destroy avatar_image" do
    assert_difference('AvatarImage.count', -1) do
      delete avatar_image_url(@avatar_image), as: :json
    end

    assert_response 204
  end
end
