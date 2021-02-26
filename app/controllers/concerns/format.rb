module Format
  # Incluí esse módulo porque a API externa permite entradas para CEPs como "000" ou "00",
  # retornando uma lista de endereços que obviamente possuem outros CEPs.

  def format_cep(cep)
    cep = cep.gsub(/[^0-9]/, '')
    cep[0..4] + '-' + cep[-3..-1]
  end

  def valid?(cep)
    cep.length == 8
  end
end
