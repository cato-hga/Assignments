class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :location
      t.string :name
      t.integer :inventory

      t.timestamps null: false
    end
  end
end
