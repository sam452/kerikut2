class AddReceiptUnitToCommodities < ActiveRecord::Migration
  def change
    add_column :commodities, :receipt_unit, :string
  end
end
