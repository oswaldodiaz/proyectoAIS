class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.integer :cita_id
      t.references :paciente
      t.references :medico
      t.integer :tipo_paciente
      t.integer :frecuentacion_inst
      t.integer :frecuentacion_serv
      t.integer :tipo_atencion
      t.string :atencion_por
      t.string :area_referencia
      t.date :fecha
      t.string :turno
      t.text :informe_medico

      t.timestamps
    end
    add_index :cita, :paciente_id
    add_index :cita, :medico_id
  end
end
