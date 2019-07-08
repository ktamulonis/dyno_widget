require 'test_helper'

class DianosaursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dianosaur = dianosaurs(:one)
  end

  test "should get index" do
    get dianosaurs_url
    assert_response :success
  end

  test "should get new" do
    get new_dianosaur_url
    assert_response :success
  end

  test "should create dianosaur" do
    assert_difference('Dianosaur.count') do
      post dianosaurs_url, params: { dianosaur: { description: @dianosaur.description, genus: @dianosaur.genus, name: @dianosaur.name, period: @dianosaur.period } }
    end

    assert_redirected_to dianosaur_url(Dianosaur.last)
  end

  test "should show dianosaur" do
    get dianosaur_url(@dianosaur)
    assert_response :success
  end

  test "should get edit" do
    get edit_dianosaur_url(@dianosaur)
    assert_response :success
  end

  test "should update dianosaur" do
    patch dianosaur_url(@dianosaur), params: { dianosaur: { description: @dianosaur.description, genus: @dianosaur.genus, name: @dianosaur.name, period: @dianosaur.period } }
    assert_redirected_to dianosaur_url(@dianosaur)
  end

  test "should destroy dianosaur" do
    assert_difference('Dianosaur.count', -1) do
      delete dianosaur_url(@dianosaur)
    end

    assert_redirected_to dianosaurs_url
  end
end
