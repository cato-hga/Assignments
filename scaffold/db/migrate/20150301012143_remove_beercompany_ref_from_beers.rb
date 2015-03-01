class RemoveBeercompanyRefFromBeers < ActiveRecord::Migration
  def change
    remove_reference :beers, :beer_company, index: true
    remove_foreign_key :beers, :beer_companies
  end
end
