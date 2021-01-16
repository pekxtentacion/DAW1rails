require "application_system_test_case"

class PostresTest < ApplicationSystemTestCase
  setup do
    @postre = postres(:one)
  end

  test "visiting the index" do
    visit postres_url
    assert_selector "h1", text: "Postres"
  end

  test "creating a Postre" do
    visit postres_url
    click_on "New Postre"

    fill_in "Nombre", with: @postre.nombre
    fill_in "Precio", with: @postre.precio
    fill_in "Source", with: @postre.source
    click_on "Create Postre"

    assert_text "Postre was successfully created"
    click_on "Back"
  end

  test "updating a Postre" do
    visit postres_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @postre.nombre
    fill_in "Precio", with: @postre.precio
    fill_in "Source", with: @postre.source
    click_on "Update Postre"

    assert_text "Postre was successfully updated"
    click_on "Back"
  end

  test "destroying a Postre" do
    visit postres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postre was successfully destroyed"
  end
end
