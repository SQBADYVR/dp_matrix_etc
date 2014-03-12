class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :scope
      t.integer :team_id
      t.integer :fmea_id

      t.timestamps
    end
  end
end
