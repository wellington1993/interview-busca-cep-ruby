class Api::V1::AdressesController < ApplicationController
  before_action :set_adress, only: [:show, :update, :destroy]

  # GET /adresses
  def index
    @adresses = Adress.all

    render json: @adresses
  end

  # GET /adresses/1
  def show
    render json: @adress
  end

  # POST /adresses
  def create
    @adress = Adress.new(adress_params)

    if @adress.save
      render json: @adress, status: :created, location: @adress
    else
      render json: @adress.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adresses/1
  def update
    if @adress.update(adress_params)
      render json: @adress
    else
      render json: @adress.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adresses/1
  def destroy
    @adress.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      zip_code = format_cep(params[:cep])
      @adress = Adress.find_by_cep(zip_code)
      puts params[:cep]
      puts zip_code
      puts @adress

      unless @adress
        # inicializa um novo usuario
        # pode ser util pra retornar em branco
        # ou para criar um com dados remotos
        @adress = Adress.new
        # TODO: Implementar busca externa de CEP
        # TODO: Cadastrar CEP, talvez em segundo plano
        puts 'Implementar busca externa e cadastrar CEP'
        require 'rest-client'
        begin
          # TODO: Implementar busca em mais de um provedor
          # TODO: Busca em segundo plano usando threads
          # TODO: Busca simultanea em varios lugares
          url = "https://viacep.com.br/ws/#{params[:cep]}/json"
          puts url
          res = RestClient.get(url)
          res = JSON.parse(res.to_s)
          puts res.to_s
          @adress.cep = res['cep']
          @adress.bairro = res['bairro']
          @adress.logradouro = res['logradouro']
          @adress.complemento = res['complemento']
          @adress.cidade = res['localidade']
          @adress.uf = res['uf']
          @adress.ibge = res['ibge']
          @adress.gia = res['gia']
          @adress.ddd = res['ddd']
          @adress.siafi = res['siafi']
          @adress.save
        rescue => e
          puts e.to_s
        end
      end
    end

    # Only allow a list of trusted parameters through.
    def adress_params
      params.require(:adress).permit(:cep, :logradouro, :complemento, :bairro, :cidade, :uf, :ibge, :gia, :ddd, :siafi)
    end
end
