class Paciente < ActiveRecord::Base
  belongs_to :historia_medica
end
