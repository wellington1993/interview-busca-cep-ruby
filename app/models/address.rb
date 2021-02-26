class Address < ApplicationRecord
  validates :cep, uniqueness: true, presence: true
  # 86975-000 onde nasci nao tem logradouro rs
  validates :logradouro, presence: true, unless: -> { bairro.blank? }
  
  private

  def self.format_cep(cep)
    cep = cep.to_s.gsub(/[^0-9]/, '')
    cep[0..4].to_s + '-' + cep[-3..-1].to_s
  end

  def self.get_from_remote(cep,url,service_provider='')
    puts '========================================='
    address = self.new
    puts "GET em #{url}"
    begin
      require 'rest-client'
      res = RestClient.get(url, {content_type: :json, accept: :json})
      res = JSON.parse(res.to_s, symbolize_names: true)

      if res.is_a? Array
        puts res.to_s
        res = res.first
        multiplo_resultado = true
      end

      # TODO: Tratar para res com mais de um resultado
  
      # TODO: tratar com format_cep?
      address.cep = Address.format_cep(res[:code] || res[:cep])

      address.service = res[:service] || service_provider

      address.bairro = res[:bairro] || res[:district] || res[:neighborhood]
      address.logradouro = res[:logradouro] || res[:address] || res[:street]
      address.complemento = res[:complemento]
      address.cidade = res[:localidade] || res[:city] || res[:cidade]
      address.uf = res[:uf] || res[:state]
      address.ibge = res[:ibge]
      address.gia = res[:gia]
      address.ddd = res[:ddd]
      address.siafi = res[:siafi]
      address.erro = res[:erro] || (res[:ok] == false)
      puts "erro?: #{res[:erro]} ou #{res[:ok]}"
      # TODO: Cache e tratamento de erro
      if address.erro
        puts address.to_s
        address = nil
      else
        address.save unless multiplo_resultado
      end
    rescue => e
      puts e.to_s
      address = nil
    end
    address 
  end
end

