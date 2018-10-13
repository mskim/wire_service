require "application_system_test_case"

class YhArticlesTest < ApplicationSystemTestCase
  setup do
    @yh_article = yh_articles(:one)
  end

  test "visiting the index" do
    visit yh_articles_url
    assert_selector "h1", text: "Yh Articles"
  end

  test "creating a Yh article" do
    visit yh_articles_url
    click_on "New Yh Article"

    fill_in "Body", with: @yh_article.body
    fill_in "Category", with: @yh_article.category
    fill_in "Class Code", with: @yh_article.class_code
    fill_in "Date", with: @yh_article.date
    fill_in "Group", with: @yh_article.group
    fill_in "Page", with: @yh_article.page
    fill_in "Selected", with: @yh_article.selected
    fill_in "Source", with: @yh_article.source
    fill_in "Taken By", with: @yh_article.taken_by
    fill_in "Time", with: @yh_article.time
    fill_in "Title", with: @yh_article.title
    fill_in "Writer", with: @yh_article.writer
    click_on "Create Yh article"

    assert_text "Yh article was successfully created"
    click_on "Back"
  end

  test "updating a Yh article" do
    visit yh_articles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @yh_article.body
    fill_in "Category", with: @yh_article.category
    fill_in "Class Code", with: @yh_article.class_code
    fill_in "Date", with: @yh_article.date
    fill_in "Group", with: @yh_article.group
    fill_in "Page", with: @yh_article.page
    fill_in "Selected", with: @yh_article.selected
    fill_in "Source", with: @yh_article.source
    fill_in "Taken By", with: @yh_article.taken_by
    fill_in "Time", with: @yh_article.time
    fill_in "Title", with: @yh_article.title
    fill_in "Writer", with: @yh_article.writer
    click_on "Update Yh article"

    assert_text "Yh article was successfully updated"
    click_on "Back"
  end

  test "destroying a Yh article" do
    visit yh_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yh article was successfully destroyed"
  end
end
