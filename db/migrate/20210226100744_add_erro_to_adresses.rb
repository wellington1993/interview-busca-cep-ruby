class AddErroToAdresses < ActiveRecord::Migration[6.1]
  def change
    add_column :adresses, :erro, :boolean
  end
end
