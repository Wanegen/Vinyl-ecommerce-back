class AddReferenceToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :reference, :integer
  end
end
