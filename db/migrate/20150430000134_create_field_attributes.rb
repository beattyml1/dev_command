class CreateFieldAttributes < ActiveRecord::Migration
  def change
    create_table :field_attributes do |t|
      t.references :attribute, index: true
      t.references :field, index: true
      t.string :arg1

      t.timestamps
    end
  end
end
