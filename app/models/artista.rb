class Artista < ApplicationRecord
	self.table_name = "artistas"

	has_many :albums
end
