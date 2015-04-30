class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :code_name
      t.string :friendly_name
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
