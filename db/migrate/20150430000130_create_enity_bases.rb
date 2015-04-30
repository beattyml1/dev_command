class CreateEnityBases < ActiveRecord::Migration
  def change
    create_table :enity_bases do |t|
      t.references :entity, index: true

      t.timestamps
    end
  end
end
