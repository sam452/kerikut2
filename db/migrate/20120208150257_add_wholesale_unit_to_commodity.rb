class AddWholesaleUnitToCommodity < ActiveRecord::Migration
  def change
    add_column :commodities, :wholesale_unit, :string
  end
end
