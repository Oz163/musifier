class Usuario < ApplicationRecord
	has_many :calificacion_cancions
	has_many :cancions, through: :calificacion_cancions
	has_many :calificacion_albums
	has_many :albums, through: :calificacion_albums
end
