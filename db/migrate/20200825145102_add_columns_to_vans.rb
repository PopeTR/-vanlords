class AddColumnsToVans < ActiveRecord::Migration[6.0]
  def change
    add_column :vans, :size, :integer
    add_column :vans, :location, :string
  end
end
