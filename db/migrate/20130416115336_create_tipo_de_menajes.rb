class CreateTipoDeMenajes < ActiveRecord::Migration
  def change
    create_table :tipo_de_menajes do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
