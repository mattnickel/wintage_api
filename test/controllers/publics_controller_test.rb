require "test_helper"

class PublicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public = publics(:one)
  end

  test "should get index" do
    get publics_url, as: :json
    assert_response :success
  end

  test "should create public" do
    assert_difference('Public.count') do
      post publics_url, params: { public: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show public" do
    get public_url(@public), as: :json
    assert_response :success
  end

  test "should update public" do
    patch public_url(@public), params: { public: {  } }, as: :json
    assert_response 200
  end

  test "should destroy public" do
    assert_difference('Public.count', -1) do
      delete public_url(@public), as: :json
    end

    assert_response 204
  end
end
