class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :volume_quality
      t.string :volume_type
      t.string :region
      t.string :district
      t.string :ward
      t.string :town
      t.date :date

      t.timestamps
    end
  end
end
