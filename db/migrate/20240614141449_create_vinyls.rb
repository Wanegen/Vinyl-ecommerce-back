class CreateVinyls < ActiveRecord::Migration[7.1]
  def change
    create_table :vinyls do |t|

      t.timestamps
    end
  end
end
