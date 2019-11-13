class Alimentos
	attr_reader :nombre, :gases, :terreno
	attr_writer :gases, :terreno
	def initialize (nombre)
		@nombre = nombre
	end
end
