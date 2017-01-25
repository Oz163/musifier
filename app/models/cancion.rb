class Cancion < ApplicationRecord
	belongs_to :album
	has_many :calificacion_cancions
	has_many :usuarios, through: :calificacion_cancions
end
