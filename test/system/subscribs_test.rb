require "application_system_test_case"

class SubscribsTest < ApplicationSystemTestCase
  setup do
    @subscrib = subscribs(:one)
  end

  test "visiting the index" do
    visit subscribs_url
    assert_selector "h1", text: "Subscribs"
  end

  test "should create subscrib" do
    visit subscribs_url
    click_on "New subscrib"

    click_on "Create Subscrib"

    assert_text "Subscrib was successfully created"
    click_on "Back"
  end

  test "should update Subscrib" do
    visit subscrib_url(@subscrib)
    click_on "Edit this subscrib", match: :first

    click_on "Update Subscrib"

    assert_text "Subscrib was successfully updated"
    click_on "Back"
  end

  test "should destroy Subscrib" do
    visit subscrib_url(@subscrib)
    click_on "Destroy this subscrib", match: :first

    assert_text "Subscrib was successfully destroyed"
  end
end
