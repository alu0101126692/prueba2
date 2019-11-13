class Alimentos
	attr_reader :nombre, :gases
	attr_writer :gases
	def initialize (nombre)
		@nombre = nombre
	end
end
