class Adress < ApplicationRecord
  validates :cep, uniqueness: true, presence: true
  # 86975-000 onde nasci nao tem logradouro rs
  validates :logradouro, presence: true, unless: -> { bairro.blank? }
end


