class CreateAdresses < ActiveRecord::Migration[6.1]
  def change
    create_table :adresses do |t|
      t.string :cep
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.integer :ibge
      t.integer :gia
      t.integer :ddd
      t.integer :siafi

      t.timestamps
    end
  end
end
