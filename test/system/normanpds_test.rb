require "application_system_test_case"

class NormanpdsTest < ApplicationSystemTestCase
  setup do
    @normanpd = normanpds(:one)
  end

  test "visiting the index" do
    visit normanpds_url
    assert_selector "h1", text: "Normanpds"
  end

  test "should create normanpd" do
    visit normanpds_url
    click_on "New normanpd"

    fill_in "Address1", with: @normanpd.address1
    fill_in "Address2", with: @normanpd.address2
    fill_in "Business", with: @normanpd.business
    fill_in "City", with: @normanpd.city
    fill_in "Email", with: @normanpd.email
    fill_in "First name", with: @normanpd.first_name
    fill_in "Gatecode", with: @normanpd.gatecode
    fill_in "Last name", with: @normanpd.last_name
    fill_in "Notes", with: @normanpd.notes
    fill_in "Phone1", with: @normanpd.phone1
    fill_in "Phone2", with: @normanpd.phone2
    fill_in "State", with: @normanpd.state
    fill_in "Zip", with: @normanpd.zip
    click_on "Create Normanpd"

    assert_text "Normanpd was successfully created"
    click_on "Back"
  end

  test "should update Normanpd" do
    visit normanpd_url(@normanpd)
    click_on "Edit this normanpd", match: :first

    fill_in "Address1", with: @normanpd.address1
    fill_in "Address2", with: @normanpd.address2
    fill_in "Business", with: @normanpd.business
    fill_in "City", with: @normanpd.city
    fill_in "Email", with: @normanpd.email
    fill_in "First name", with: @normanpd.first_name
    fill_in "Gatecode", with: @normanpd.gatecode
    fill_in "Last name", with: @normanpd.last_name
    fill_in "Notes", with: @normanpd.notes
    fill_in "Phone1", with: @normanpd.phone1
    fill_in "Phone2", with: @normanpd.phone2
    fill_in "State", with: @normanpd.state
    fill_in "Zip", with: @normanpd.zip
    click_on "Update Normanpd"

    assert_text "Normanpd was successfully updated"
    click_on "Back"
  end

  test "should destroy Normanpd" do
    visit normanpd_url(@normanpd)
    click_on "Destroy this normanpd", match: :first

    assert_text "Normanpd was successfully destroyed"
  end
end
