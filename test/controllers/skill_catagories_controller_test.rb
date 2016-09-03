require 'test_helper'

class SkillCatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_catagory = skill_catagories(:one)
  end

  test "should get index" do
    get skill_catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_catagory_url
    assert_response :success
  end

  test "should create skill_catagory" do
    assert_difference('SkillCatagory.count') do
      post skill_catagories_url, params: { skill_catagory: { description: @skill_catagory.description, name: @skill_catagory.name } }
    end

    assert_redirected_to skill_catagory_url(SkillCatagory.last)
  end

  test "should show skill_catagory" do
    get skill_catagory_url(@skill_catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_catagory_url(@skill_catagory)
    assert_response :success
  end

  test "should update skill_catagory" do
    patch skill_catagory_url(@skill_catagory), params: { skill_catagory: { description: @skill_catagory.description, name: @skill_catagory.name } }
    assert_redirected_to skill_catagory_url(@skill_catagory)
  end

  test "should destroy skill_catagory" do
    assert_difference('SkillCatagory.count', -1) do
      delete skill_catagory_url(@skill_catagory)
    end

    assert_redirected_to skill_catagories_url
  end
end
