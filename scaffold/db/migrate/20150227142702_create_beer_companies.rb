class CreateBeerCompanies < ActiveRecord::Migration
  def change
    create_table :beer_companies do |t|
      t.string :location
      t.text :address
      t.integer :stock

      t.timestamps null: false
    end
  end
end
