class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :id
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :sexo
      t.integer :tlf
      t.string :direccion
      t.references :historia_medica
      t.date :fecha_nacimiento
      t.string :lugar_nacimiento
      t.string :nombre_padre
      t.string :nombre_madre
      t.string :seguro_social
      t.string :provincia
      t.string :distrito
      t.string :corregimiento
      t.string :nombre_urgencias
      t.string :parentesco
      t.integer :telefono_urgencias

      t.timestamps
    end
    add_index :pacientes, :historia_medica_id
  end
end
