class AddReferenceToBeercompany < ActiveRecord::Migration
  def change
    add_column :beer_companies, :BeerCompany, :reference
  end
end
