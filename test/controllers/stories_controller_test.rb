require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story = stories(:one)
  end

  test "should get index" do
    get stories_url
    assert_response :success
  end

  test "should get new" do
    get new_story_url
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post stories_url, params: { story: { body: @story.body, char_count: @story.char_count, date: @story.date, draft: @story.draft, group: @story.group, order: @story.order, page: @story.page, path: @story.path, quote: @story.quote, reporter: @story.reporter, sent: @story.sent, subtitle: @story.subtitle, title: @story.title, user_id: @story.user_id } }
    end

    assert_redirected_to story_url(Story.last)
  end

  test "should show story" do
    get story_url(@story)
    assert_response :success
  end

  test "should get edit" do
    get edit_story_url(@story)
    assert_response :success
  end

  test "should update story" do
    patch story_url(@story), params: { story: { body: @story.body, char_count: @story.char_count, date: @story.date, draft: @story.draft, group: @story.group, order: @story.order, page: @story.page, path: @story.path, quote: @story.quote, reporter: @story.reporter, sent: @story.sent, subtitle: @story.subtitle, title: @story.title, user_id: @story.user_id } }
    assert_redirected_to story_url(@story)
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete story_url(@story)
    end

    assert_redirected_to stories_url
  end
end