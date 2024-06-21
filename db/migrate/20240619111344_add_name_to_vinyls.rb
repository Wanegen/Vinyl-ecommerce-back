class AddNameToVinyls < ActiveRecord::Migration[7.1]
  def change
    add_column :vinyls, :name, :string
    add_column :vinyls, :description, :text
    add_column :vinyls, :price, :integer
  end
end
