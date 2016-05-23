class CreateAccions < ActiveRecord::Migration
  def change
    create_table :accions do |t|
      t.string :nombre
      t.integer :porcentaje_realizado
      t.references :objetivo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
