module Format
  # Incluí esse módulo porque a API externa permite entradas para CEPs como "000" ou "00",
  # retornando uma lista de endereços que obviamente possuem outros CEPs.

  def format_cep(cep)
    cep = cep.to_s.gsub(/[^0-9]/, '')
    cep[0..4].to_s + '-' + cep[-3..-1].to_s
  end

  def valid?(cep)
    (8..9).cover? cep.length
  end
end
