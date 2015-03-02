class RenameCompaniesIdInBeers < ActiveRecord::Migration
  def change
    rename_column :beers, :Companies_id, :company_id
  end
end
