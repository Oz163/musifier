class CalificacionCancion < ApplicationRecord
	belongs_to :cancion
	belongs_to :usuario
end
