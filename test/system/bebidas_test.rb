require "application_system_test_case"

class BebidasTest < ApplicationSystemTestCase
  setup do
    @bebida = bebidas(:one)
  end

  test "visiting the index" do
    visit bebidas_url
    assert_selector "h1", text: "Bebidas"
  end

  test "creating a Bebida" do
    visit bebidas_url
    click_on "New Bebida"

    fill_in "Nombre", with: @bebida.nombre
    fill_in "Precio", with: @bebida.precio
    fill_in "Source", with: @bebida.source
    click_on "Create Bebida"

    assert_text "Bebida was successfully created"
    click_on "Back"
  end

  test "updating a Bebida" do
    visit bebidas_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @bebida.nombre
    fill_in "Precio", with: @bebida.precio
    fill_in "Source", with: @bebida.source
    click_on "Update Bebida"

    assert_text "Bebida was successfully updated"
    click_on "Back"
  end

  test "destroying a Bebida" do
    visit bebidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bebida was successfully destroyed"
  end
end
