require "test_helper"

class ComplementosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complemento = complementos(:one)
  end

  test "should get index" do
    get complementos_url
    assert_response :success
  end

  test "should get new" do
    get new_complemento_url
    assert_response :success
  end

  test "should create complemento" do
    assert_difference('Complemento.count') do
      post complementos_url, params: { complemento: { nombre: @complemento.nombre, precio: @complemento.precio, source: @complemento.source } }
    end

    assert_redirected_to complemento_url(Complemento.last)
  end

  test "should show complemento" do
    get complemento_url(@complemento)
    assert_response :success
  end

  test "should get edit" do
    get edit_complemento_url(@complemento)
    assert_response :success
  end

  test "should update complemento" do
    patch complemento_url(@complemento), params: { complemento: { nombre: @complemento.nombre, precio: @complemento.precio, source: @complemento.source } }
    assert_redirected_to complemento_url(@complemento)
  end

  test "should destroy complemento" do
    assert_difference('Complemento.count', -1) do
      delete complemento_url(@complemento)
    end

    assert_redirected_to complementos_url
  end
end
