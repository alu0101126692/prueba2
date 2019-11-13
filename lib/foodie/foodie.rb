class Alimentos
	attr_reader :nombre, :gases
	attr_writer :gases, :terreno
	def initialize (nombre)
		@nombre = nombre
	end
end
