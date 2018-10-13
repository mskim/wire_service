require 'test_helper'

class YhPicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yh_picture = yh_pictures(:one)
  end

  test "should get index" do
    get yh_pictures_url
    assert_response :success
  end

  test "should get new" do
    get new_yh_picture_url
    assert_response :success
  end

  test "should create yh_picture" do
    assert_difference('YhPicture.count') do
      post yh_pictures_url, params: { yh_picture: { action: @yh_picture.action, attriubute_code: @yh_picture.attriubute_code, body: @yh_picture.body, category: @yh_picture.category, class_code: @yh_picture.class_code, content_id: @yh_picture.content_id, credit: @yh_picture.credit, date: @yh_picture.date, group: @yh_picture.group, page: @yh_picture.page, picture: @yh_picture.picture, region: @yh_picture.region, selected: @yh_picture.selected, service_type: @yh_picture.service_type, source: @yh_picture.source, subtile: @yh_picture.subtile, taken_by: @yh_picture.taken_by, time: @yh_picture.time, title: @yh_picture.title, urgency: @yh_picture.urgency } }
    end

    assert_redirected_to yh_picture_url(YhPicture.last)
  end

  test "should show yh_picture" do
    get yh_picture_url(@yh_picture)
    assert_response :success
  end

  test "should get edit" do
    get edit_yh_picture_url(@yh_picture)
    assert_response :success
  end

  test "should update yh_picture" do
    patch yh_picture_url(@yh_picture), params: { yh_picture: { action: @yh_picture.action, attriubute_code: @yh_picture.attriubute_code, body: @yh_picture.body, category: @yh_picture.category, class_code: @yh_picture.class_code, content_id: @yh_picture.content_id, credit: @yh_picture.credit, date: @yh_picture.date, group: @yh_picture.group, page: @yh_picture.page, picture: @yh_picture.picture, region: @yh_picture.region, selected: @yh_picture.selected, service_type: @yh_picture.service_type, source: @yh_picture.source, subtile: @yh_picture.subtile, taken_by: @yh_picture.taken_by, time: @yh_picture.time, title: @yh_picture.title, urgency: @yh_picture.urgency } }
    assert_redirected_to yh_picture_url(@yh_picture)
  end

  test "should destroy yh_picture" do
    assert_difference('YhPicture.count', -1) do
      delete yh_picture_url(@yh_picture)
    end

    assert_redirected_to yh_pictures_url
  end
end
