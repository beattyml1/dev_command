class CreateEntityAttributes < ActiveRecord::Migration
  def change
    create_table :entity_attributes do |t|
      t.references :attribute, index: true
      t.references :entity, index: true
      t.string :arg1

      t.timestamps
    end
  end
end
