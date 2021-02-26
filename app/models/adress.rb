class Adress < ApplicationRecord
  validates :cep, uniqueness: true, presence: true
  validates :logradouro, presence: true
end

