class CreateJornadas < ActiveRecord::Migration
  def change
    create_table :jornadas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
