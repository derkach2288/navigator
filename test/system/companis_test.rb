require "application_system_test_case"

class CompanisTest < ApplicationSystemTestCase
  setup do
    @compani = companis(:one)
  end

  test "visiting the index" do
    visit companis_url
    assert_selector "h1", text: "Companis"
  end

  test "should create compani" do
    visit companis_url
    click_on "New compani"

    click_on "Create Compani"

    assert_text "Compani was successfully created"
    click_on "Back"
  end

  test "should update Compani" do
    visit compani_url(@compani)
    click_on "Edit this compani", match: :first

    click_on "Update Compani"

    assert_text "Compani was successfully updated"
    click_on "Back"
  end

  test "should destroy Compani" do
    visit compani_url(@compani)
    click_on "Destroy this compani", match: :first

    assert_text "Compani was successfully destroyed"
  end
end
