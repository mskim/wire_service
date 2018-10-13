require "application_system_test_case"

class YhPicturesTest < ApplicationSystemTestCase
  setup do
    @yh_picture = yh_pictures(:one)
  end

  test "visiting the index" do
    visit yh_pictures_url
    assert_selector "h1", text: "Yh Pictures"
  end

  test "creating a Yh picture" do
    visit yh_pictures_url
    click_on "New Yh Picture"

    fill_in "Action", with: @yh_picture.action
    fill_in "Attriubute Code", with: @yh_picture.attriubute_code
    fill_in "Body", with: @yh_picture.body
    fill_in "Category", with: @yh_picture.category
    fill_in "Class Code", with: @yh_picture.class_code
    fill_in "Content", with: @yh_picture.content_id
    fill_in "Credit", with: @yh_picture.credit
    fill_in "Date", with: @yh_picture.date
    fill_in "Group", with: @yh_picture.group
    fill_in "Page", with: @yh_picture.page
    fill_in "Picture", with: @yh_picture.picture
    fill_in "Region", with: @yh_picture.region
    fill_in "Selected", with: @yh_picture.selected
    fill_in "Service Type", with: @yh_picture.service_type
    fill_in "Source", with: @yh_picture.source
    fill_in "Subtile", with: @yh_picture.subtile
    fill_in "Taken By", with: @yh_picture.taken_by
    fill_in "Time", with: @yh_picture.time
    fill_in "Title", with: @yh_picture.title
    fill_in "Urgency", with: @yh_picture.urgency
    click_on "Create Yh picture"

    assert_text "Yh picture was successfully created"
    click_on "Back"
  end

  test "updating a Yh picture" do
    visit yh_pictures_url
    click_on "Edit", match: :first

    fill_in "Action", with: @yh_picture.action
    fill_in "Attriubute Code", with: @yh_picture.attriubute_code
    fill_in "Body", with: @yh_picture.body
    fill_in "Category", with: @yh_picture.category
    fill_in "Class Code", with: @yh_picture.class_code
    fill_in "Content", with: @yh_picture.content_id
    fill_in "Credit", with: @yh_picture.credit
    fill_in "Date", with: @yh_picture.date
    fill_in "Group", with: @yh_picture.group
    fill_in "Page", with: @yh_picture.page
    fill_in "Picture", with: @yh_picture.picture
    fill_in "Region", with: @yh_picture.region
    fill_in "Selected", with: @yh_picture.selected
    fill_in "Service Type", with: @yh_picture.service_type
    fill_in "Source", with: @yh_picture.source
    fill_in "Subtile", with: @yh_picture.subtile
    fill_in "Taken By", with: @yh_picture.taken_by
    fill_in "Time", with: @yh_picture.time
    fill_in "Title", with: @yh_picture.title
    fill_in "Urgency", with: @yh_picture.urgency
    click_on "Update Yh picture"

    assert_text "Yh picture was successfully updated"
    click_on "Back"
  end

  test "destroying a Yh picture" do
    visit yh_pictures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yh picture was successfully destroyed"
  end
end
