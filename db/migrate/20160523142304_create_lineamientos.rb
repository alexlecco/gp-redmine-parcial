class CreateLineamientos < ActiveRecord::Migration
  def change
    create_table :lineamientos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
