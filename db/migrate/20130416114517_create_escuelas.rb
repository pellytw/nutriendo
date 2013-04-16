class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
      t.integer :numero
      t.string :nombre
      t.integer :localidad_id
      t.integer :nivel_id
      t.integer :jornada_id

      t.timestamps
    end
  end
end
