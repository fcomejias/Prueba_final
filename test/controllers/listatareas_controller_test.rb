require 'test_helper'

class ListatareasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listatarea = listatareas(:one)
  end

  test "should get index" do
    get listatareas_url
    assert_response :success
  end

  test "should get new" do
    get new_listatarea_url
    assert_response :success
  end

  test "should create listatarea" do
    assert_difference('Listatarea.count') do
      post listatareas_url, params: { listatarea: { estado: @listatarea.estado, f_desde: @listatarea.f_desde, f_hasta: @listatarea.f_hasta, nombre: @listatarea.nombre, responsable: @listatarea.responsable } }
    end

    assert_redirected_to listatarea_url(Listatarea.last)
  end

  test "should show listatarea" do
    get listatarea_url(@listatarea)
    assert_response :success
  end

  test "should get edit" do
    get edit_listatarea_url(@listatarea)
    assert_response :success
  end

  test "should update listatarea" do
    patch listatarea_url(@listatarea), params: { listatarea: { estado: @listatarea.estado, f_desde: @listatarea.f_desde, f_hasta: @listatarea.f_hasta, nombre: @listatarea.nombre, responsable: @listatarea.responsable } }
    assert_redirected_to listatarea_url(@listatarea)
  end

  test "should destroy listatarea" do
    assert_difference('Listatarea.count', -1) do
      delete listatarea_url(@listatarea)
    end

    assert_redirected_to listatareas_url
  end
end
