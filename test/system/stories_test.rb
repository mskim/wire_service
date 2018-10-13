require "application_system_test_case"

class StoriesTest < ApplicationSystemTestCase
  setup do
    @story = stories(:one)
  end

  test "visiting the index" do
    visit stories_url
    assert_selector "h1", text: "Stories"
  end

  test "creating a Story" do
    visit stories_url
    click_on "New Story"

    fill_in "Body", with: @story.body
    fill_in "Char Count", with: @story.char_count
    fill_in "Date", with: @story.date
    fill_in "Draft", with: @story.draft
    fill_in "Group", with: @story.group
    fill_in "Order", with: @story.order
    fill_in "Page", with: @story.page
    fill_in "Path", with: @story.path
    fill_in "Quote", with: @story.quote
    fill_in "Reporter", with: @story.reporter
    fill_in "Sent", with: @story.sent
    fill_in "Subtitle", with: @story.subtitle
    fill_in "Title", with: @story.title
    fill_in "User", with: @story.user_id
    click_on "Create Story"

    assert_text "Story was successfully created"
    click_on "Back"
  end

  test "updating a Story" do
    visit stories_url
    click_on "Edit", match: :first

    fill_in "Body", with: @story.body
    fill_in "Char Count", with: @story.char_count
    fill_in "Date", with: @story.date
    fill_in "Draft", with: @story.draft
    fill_in "Group", with: @story.group
    fill_in "Order", with: @story.order
    fill_in "Page", with: @story.page
    fill_in "Path", with: @story.path
    fill_in "Quote", with: @story.quote
    fill_in "Reporter", with: @story.reporter
    fill_in "Sent", with: @story.sent
    fill_in "Subtitle", with: @story.subtitle
    fill_in "Title", with: @story.title
    fill_in "User", with: @story.user_id
    click_on "Update Story"

    assert_text "Story was successfully updated"
    click_on "Back"
  end

  test "destroying a Story" do
    visit stories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Story was successfully destroyed"
  end
end
