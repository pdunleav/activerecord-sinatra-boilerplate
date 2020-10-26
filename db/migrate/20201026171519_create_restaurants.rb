class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.timestamps  # will add `created_at` + `updated_at` columns
    end
  end
end
