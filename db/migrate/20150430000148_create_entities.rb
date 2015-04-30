class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.references :project, index: true
      t.string :code_name
      t.string :label
      t.string :layout_hint
      t.references :field, index: true

      t.timestamps
    end
  end
end
