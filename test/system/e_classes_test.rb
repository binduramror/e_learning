require "application_system_test_case"

class EClassesTest < ApplicationSystemTestCase
  setup do
    @e_class = e_classes(:one)
  end

  test "visiting the index" do
    visit e_classes_url
    assert_selector "h1", text: "E Classes"
  end

  test "creating a E class" do
    visit e_classes_url
    click_on "New E Class"

    fill_in "Title", with: @e_class.title
    click_on "Create E class"

    assert_text "E class was successfully created"
    click_on "Back"
  end

  test "updating a E class" do
    visit e_classes_url
    click_on "Edit", match: :first

    fill_in "Title", with: @e_class.title
    click_on "Update E class"

    assert_text "E class was successfully updated"
    click_on "Back"
  end

  test "destroying a E class" do
    visit e_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "E class was successfully destroyed"
  end
end
