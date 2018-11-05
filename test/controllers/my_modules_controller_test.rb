require 'test_helper'

class MyModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_module = my_modules(:one)
  end

  test "should get index" do
    get my_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_my_module_url
    assert_response :success
  end

  test "should create my_module" do
    assert_difference('MyModule.count') do
      post my_modules_url, params: { my_module: {  : @my_module. , description: @my_module.description, meta_title: @my_module.meta_title, name: @my_module.name } }
    end

    assert_redirected_to my_module_url(MyModule.last)
  end

  test "should show my_module" do
    get my_module_url(@my_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_module_url(@my_module)
    assert_response :success
  end

  test "should update my_module" do
    patch my_module_url(@my_module), params: { my_module: {  : @my_module. , description: @my_module.description, meta_title: @my_module.meta_title, name: @my_module.name } }
    assert_redirected_to my_module_url(@my_module)
  end

  test "should destroy my_module" do
    assert_difference('MyModule.count', -1) do
      delete my_module_url(@my_module)
    end

    assert_redirected_to my_modules_url
  end
end
