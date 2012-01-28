class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :id
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :sexo
      t.integer :tlf
      t.string :direccion
      t.references :servicio
      t.string :nombre_usuario
      t.string :clave
      t.string :rol

      t.timestamps
    end
    add_index :usuarios, :servicio_id
  end
end
