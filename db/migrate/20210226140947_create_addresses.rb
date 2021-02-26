class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
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
      t.boolean :erro

      t.timestamps
    end
  end
end
