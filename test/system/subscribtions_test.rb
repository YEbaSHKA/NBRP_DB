require "application_system_test_case"

class SubscribtionsTest < ApplicationSystemTestCase
  setup do
    @subscribtion = subscribtions(:one)
  end

  test "visiting the index" do
    visit subscribtions_url
    assert_selector "h1", text: "Subscribtions"
  end

  test "should create subscribtion" do
    visit subscribtions_url
    click_on "New subscribtion"

    fill_in "Book", with: @subscribtion.book_id
    fill_in "Finish", with: @subscribtion.finish
    check "Is active" if @subscribtion.is_active
    fill_in "Start", with: @subscribtion.start
    fill_in "Subscriber", with: @subscribtion.subscriber_id
    click_on "Create Subscribtion"

    assert_text "Subscribtion was successfully created"
    click_on "Back"
  end

  test "should update Subscribtion" do
    visit subscribtion_url(@subscribtion)
    click_on "Edit this subscribtion", match: :first

    fill_in "Book", with: @subscribtion.book_id
    fill_in "Finish", with: @subscribtion.finish
    check "Is active" if @subscribtion.is_active
    fill_in "Start", with: @subscribtion.start
    fill_in "Subscriber", with: @subscribtion.subscriber_id
    click_on "Update Subscribtion"

    assert_text "Subscribtion was successfully updated"
    click_on "Back"
  end

  test "should destroy Subscribtion" do
    visit subscribtion_url(@subscribtion)
    click_on "Destroy this subscribtion", match: :first

    assert_text "Subscribtion was successfully destroyed"
  end
end
