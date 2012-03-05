class AddCommodityIdToVolumes < ActiveRecord::Migration
  def change
    add_column :volumes, :commodity_id, :integer
  end
end
