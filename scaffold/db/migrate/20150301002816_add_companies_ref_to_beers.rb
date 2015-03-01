class AddCompaniesRefToBeers < ActiveRecord::Migration
  def change
    add_reference :beers, :Companies, index: true
    add_foreign_key :beers, :Companies
  end
end
