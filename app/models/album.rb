class Album < ApplicationRecord
	belongs_to :genero
	belongs_to :artista
	has_many :calificacion_albums
	has_many :usuarios, through: :calificacion_albums
	has_many :cancions

	def contar
		1..20.each do |numero|
			puts numero
		end
	end
end
