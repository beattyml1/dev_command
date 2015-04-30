class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :code_name
      t.string :label
      t.references :entity, index: true
      t.string :field_type
      t.boolean :required
      t.string :min
      t.string :max
      t.string :ui_hint

      t.timestamps
    end
  end
end
