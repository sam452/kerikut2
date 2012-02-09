class AddRetailUnitToCommodity < ActiveRecord::Migration
  def change
    add_column :commodities, :retail_unit, :string
    add_column :commodities, :farm_gate_unit, :string
    add_column :commodities, :delivered_unit, :string
  end
end
