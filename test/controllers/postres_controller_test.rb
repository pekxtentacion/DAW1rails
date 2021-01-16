require "test_helper"

class PostresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postre = postres(:one)
  end

  test "should get index" do
    get postres_url
    assert_response :success
  end

  test "should get new" do
    get new_postre_url
    assert_response :success
  end

  test "should create postre" do
    assert_difference('Postre.count') do
      post postres_url, params: { postre: { nombre: @postre.nombre, precio: @postre.precio, source: @postre.source } }
    end

    assert_redirected_to postre_url(Postre.last)
  end

  test "should show postre" do
    get postre_url(@postre)
    assert_response :success
  end

  test "should get edit" do
    get edit_postre_url(@postre)
    assert_response :success
  end

  test "should update postre" do
    patch postre_url(@postre), params: { postre: { nombre: @postre.nombre, precio: @postre.precio, source: @postre.source } }
    assert_redirected_to postre_url(@postre)
  end

  test "should destroy postre" do
    assert_difference('Postre.count', -1) do
      delete postre_url(@postre)
    end

    assert_redirected_to postres_url
  end
end
