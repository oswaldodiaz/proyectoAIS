class CreateHistoriaMedicas < ActiveRecord::Migration
  def change
    create_table :historia_medicas, :id => false do |t|
      t.integer :numero_expediente

      t.timestamps
    end
  end
end
