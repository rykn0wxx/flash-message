class CreateScrollers < ActiveRecord::Migration[5.0]
  def self.up
    create_table :scrollers do |t|
      t.references :project, foreign_key: true
      t.references :forecast_group, foreign_key: true
      t.float :current_sla
      t.float :mtd_sla
      t.string :callouts

      t.timestamps
    end
  end
  def self.down
    drop_table :scrollers
  end
end
