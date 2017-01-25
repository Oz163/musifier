class CalificacionAlbum < ApplicationRecord
	belongs_to :album
	belongs_to :usuario
end
