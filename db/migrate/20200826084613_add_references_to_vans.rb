class AddReferencesToVans < ActiveRecord::Migration[6.0]
  def change
    add_reference :vans, :user, foreign_key: true
  end
end
