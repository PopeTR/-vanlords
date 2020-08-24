class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.string :title
      t.text :description
      t.integer :availability
      t.integer :price_per_night

      t.timestamps
    end
  end
end
