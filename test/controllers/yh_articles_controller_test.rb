require 'test_helper'

class YhArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yh_article = yh_articles(:one)
  end

  test "should get index" do
    get yh_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_yh_article_url
    assert_response :success
  end

  test "should create yh_article" do
    assert_difference('YhArticle.count') do
      post yh_articles_url, params: { yh_article: { body: @yh_article.body, category: @yh_article.category, class_code: @yh_article.class_code, date: @yh_article.date, group: @yh_article.group, page: @yh_article.page, selected: @yh_article.selected, source: @yh_article.source, taken_by: @yh_article.taken_by, time: @yh_article.time, title: @yh_article.title, writer: @yh_article.writer } }
    end

    assert_redirected_to yh_article_url(YhArticle.last)
  end

  test "should show yh_article" do
    get yh_article_url(@yh_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_yh_article_url(@yh_article)
    assert_response :success
  end

  test "should update yh_article" do
    patch yh_article_url(@yh_article), params: { yh_article: { body: @yh_article.body, category: @yh_article.category, class_code: @yh_article.class_code, date: @yh_article.date, group: @yh_article.group, page: @yh_article.page, selected: @yh_article.selected, source: @yh_article.source, taken_by: @yh_article.taken_by, time: @yh_article.time, title: @yh_article.title, writer: @yh_article.writer } }
    assert_redirected_to yh_article_url(@yh_article)
  end

  test "should destroy yh_article" do
    assert_difference('YhArticle.count', -1) do
      delete yh_article_url(@yh_article)
    end

    assert_redirected_to yh_articles_url
  end
end
