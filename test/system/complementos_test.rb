require "application_system_test_case"

class ComplementosTest < ApplicationSystemTestCase
  setup do
    @complemento = complementos(:one)
  end

  test "visiting the index" do
    visit complementos_url
    assert_selector "h1", text: "Complementos"
  end

  test "creating a Complemento" do
    visit complementos_url
    click_on "New Complemento"

    fill_in "Nombre", with: @complemento.nombre
    fill_in "Precio", with: @complemento.precio
    fill_in "Source", with: @complemento.source
    click_on "Create Complemento"

    assert_text "Complemento was successfully created"
    click_on "Back"
  end

  test "updating a Complemento" do
    visit complementos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @complemento.nombre
    fill_in "Precio", with: @complemento.precio
    fill_in "Source", with: @complemento.source
    click_on "Update Complemento"

    assert_text "Complemento was successfully updated"
    click_on "Back"
  end

  test "destroying a Complemento" do
    visit complementos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complemento was successfully destroyed"
  end
end
