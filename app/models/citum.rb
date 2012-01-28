class Citum < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :medico
end
