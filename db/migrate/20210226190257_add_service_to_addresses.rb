class AddServiceToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :service, :string
  end
end
