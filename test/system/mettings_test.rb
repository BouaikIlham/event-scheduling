require "application_system_test_case"

class MettingsTest < ApplicationSystemTestCase
  setup do
    @metting = mettings(:one)
  end

  test "visiting the index" do
    visit mettings_url
    assert_selector "h1", text: "Mettings"
  end

  test "should create metting" do
    visit mettings_url
    click_on "New metting"

    fill_in "End time", with: @metting.end_time
    fill_in "Name", with: @metting.name
    fill_in "Start time", with: @metting.start_time
    fill_in "User", with: @metting.user_id
    click_on "Create Metting"

    assert_text "Metting was successfully created"
    click_on "Back"
  end

  test "should update Metting" do
    visit metting_url(@metting)
    click_on "Edit this metting", match: :first

    fill_in "End time", with: @metting.end_time
    fill_in "Name", with: @metting.name
    fill_in "Start time", with: @metting.start_time
    fill_in "User", with: @metting.user_id
    click_on "Update Metting"

    assert_text "Metting was successfully updated"
    click_on "Back"
  end

  test "should destroy Metting" do
    visit metting_url(@metting)
    click_on "Destroy this metting", match: :first

    assert_text "Metting was successfully destroyed"
  end
end
