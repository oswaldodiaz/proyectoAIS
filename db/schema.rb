# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120125020132) do

  create_table "cita", :force => true do |t|
    t.integer  "cita_id"
    t.integer  "paciente_id"
    t.integer  "medico_id"
    t.integer  "tipo_paciente"
    t.integer  "frecuentacion_inst"
    t.integer  "frecuentacion_serv"
    t.integer  "tipo_atencion"
    t.string   "atencion_por"
    t.string   "area_referencia"
    t.date     "fecha"
    t.string   "turno"
    t.text     "informe_medico"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "cita", ["medico_id"], :name => "index_cita_on_medico_id"
  add_index "cita", ["paciente_id"], :name => "index_cita_on_paciente_id"

  create_table "historia_medicas", :force => true do |t|
    t.integer  "numero_expediente"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "medicos", :force => true do |t|
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "sexo"
    t.integer  "tlf"
    t.string   "direccion"
    t.integer  "servicio_id"
    t.string   "nombre_usuario"
    t.string   "clave"
    t.string   "rol"
    t.string   "tipo_profesional"
    t.integer  "codigo_profesional"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "medicos", ["servicio_id"], :name => "index_medicos_on_servicio_id"

  create_table "pacientes", :force => true do |t|
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "sexo"
    t.integer  "tlf"
    t.string   "direccion"
    t.integer  "historia_medica_id"
    t.date     "fecha_nacimiento"
    t.string   "lugar_nacimiento"
    t.string   "nombre_padre"
    t.string   "nombre_madre"
    t.string   "seguro_social"
    t.string   "provincia"
    t.string   "distrito"
    t.string   "corregimiento"
    t.string   "nombre_urgencias"
    t.string   "parentesco"
    t.integer  "telefono_urgencias"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "pacientes", ["historia_medica_id"], :name => "index_pacientes_on_historia_medica_id"

  create_table "usuarios", :force => true do |t|
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "sexo"
    t.integer  "tlf"
    t.string   "direccion"
    t.integer  "servicio_id"
    t.string   "nombre_usuario"
    t.string   "clave"
    t.string   "rol"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "usuarios", ["servicio_id"], :name => "index_usuarios_on_servicio_id"

end
