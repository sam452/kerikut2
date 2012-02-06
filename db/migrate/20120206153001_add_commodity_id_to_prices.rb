class AddCommodityIdToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :commodity_id, :integer
    remove_column :prices, :commodity
  end
end
