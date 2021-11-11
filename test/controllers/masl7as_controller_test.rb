require 'test_helper'

class Masl7asControllerTest < ActionDispatch::IntegrationTest
  setup do
    @masl7a = masl7as(:one)
  end

  test "should get index" do
    get masl7as_url
    assert_response :success
  end

  test "should get new" do
    get new_masl7a_url
    assert_response :success
  end

  test "should create masl7a" do
    assert_difference('Masl7a.count') do
      post masl7as_url, params: { masl7a: { description: @masl7a.description, name: @masl7a.name } }
    end

    assert_redirected_to masl7a_url(Masl7a.last)
  end

  test "should show masl7a" do
    get masl7a_url(@masl7a)
    assert_response :success
  end

  test "should get edit" do
    get edit_masl7a_url(@masl7a)
    assert_response :success
  end

  test "should update masl7a" do
    patch masl7a_url(@masl7a), params: { masl7a: { description: @masl7a.description, name: @masl7a.name } }
    assert_redirected_to masl7a_url(@masl7a)
  end

  test "should destroy masl7a" do
    assert_difference('Masl7a.count', -1) do
      delete masl7a_url(@masl7a)
    end

    assert_redirected_to masl7as_url
  end
end
