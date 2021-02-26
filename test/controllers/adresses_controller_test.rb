require "test_helper"

class AdressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adress = adresses(:one)
  end

  test "should get index" do
    get adresses_url, as: :json
    assert_response :success
  end

  test "should create adress" do
    assert_difference('Adress.count') do
      post adresses_url, params: { adress: { bairro: @adress.bairro, cep: @adress.cep, cidade: @adress.cidade, complemento: @adress.complemento, ddd: @adress.ddd, gia: @adress.gia, ibge: @adress.ibge, logradouro: @adress.logradouro, siafi: @adress.siafi, uf: @adress.uf } }, as: :json
    end

    assert_response 201
  end

  test "should show adress" do
    get adress_url(@adress), as: :json
    assert_response :success
  end

  test "should update adress" do
    patch adress_url(@adress), params: { adress: { bairro: @adress.bairro, cep: @adress.cep, cidade: @adress.cidade, complemento: @adress.complemento, ddd: @adress.ddd, gia: @adress.gia, ibge: @adress.ibge, logradouro: @adress.logradouro, siafi: @adress.siafi, uf: @adress.uf } }, as: :json
    assert_response 200
  end

  test "should destroy adress" do
    assert_difference('Adress.count', -1) do
      delete adress_url(@adress), as: :json
    end

    assert_response 204
  end
end
