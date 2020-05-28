require 'test_helper'

class EClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e_class = e_classes(:one)
  end

  test "should get index" do
    get e_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_e_class_url
    assert_response :success
  end

  test "should create e_class" do
    assert_difference('EClass.count') do
      post e_classes_url, params: { e_class: { title: @e_class.title } }
    end

    assert_redirected_to e_class_url(EClass.last)
  end

  test "should show e_class" do
    get e_class_url(@e_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_e_class_url(@e_class)
    assert_response :success
  end

  test "should update e_class" do
    patch e_class_url(@e_class), params: { e_class: { title: @e_class.title } }
    assert_redirected_to e_class_url(@e_class)
  end

  test "should destroy e_class" do
    assert_difference('EClass.count', -1) do
      delete e_class_url(@e_class)
    end

    assert_redirected_to e_classes_url
  end
end
