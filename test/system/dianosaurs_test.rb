require "application_system_test_case"

class DianosaursTest < ApplicationSystemTestCase
  setup do
    @dianosaur = dianosaurs(:one)
  end

  test "visiting the index" do
    visit dianosaurs_url
    assert_selector "h1", text: "Dianosaurs"
  end

  test "creating a Dianosaur" do
    visit dianosaurs_url
    click_on "New Dianosaur"

    fill_in "Description", with: @dianosaur.description
    fill_in "Genus", with: @dianosaur.genus
    fill_in "Name", with: @dianosaur.name
    fill_in "Period", with: @dianosaur.period
    click_on "Create Dianosaur"

    assert_text "Dianosaur was successfully created"
    click_on "Back"
  end

  test "updating a Dianosaur" do
    visit dianosaurs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dianosaur.description
    fill_in "Genus", with: @dianosaur.genus
    fill_in "Name", with: @dianosaur.name
    fill_in "Period", with: @dianosaur.period
    click_on "Update Dianosaur"

    assert_text "Dianosaur was successfully updated"
    click_on "Back"
  end

  test "destroying a Dianosaur" do
    visit dianosaurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dianosaur was successfully destroyed"
  end
end
