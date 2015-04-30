class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :code_name
      t.string :friendly_name

      t.timestamps
    end
  end
end
