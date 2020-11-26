require 'test_helper'

class ObservesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obserf = observes(:one)
  end

  test "should get index" do
    get observes_url, as: :json
    assert_response :success
  end

  test "should create obserf" do
    assert_difference('Observe.count') do
      post observes_url, params: { obserf: { description: @obserf.description, title: @obserf.title } }, as: :json
    end

    assert_response 201
  end

  test "should show obserf" do
    get obserf_url(@obserf), as: :json
    assert_response :success
  end

  test "should update obserf" do
    patch obserf_url(@obserf), params: { obserf: { description: @obserf.description, title: @obserf.title } }, as: :json
    assert_response 200
  end

  test "should destroy obserf" do
    assert_difference('Observe.count', -1) do
      delete obserf_url(@obserf), as: :json
    end

    assert_response 204
  end
end
