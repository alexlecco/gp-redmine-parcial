class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.string :nombre
      t.references :lineamiento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
