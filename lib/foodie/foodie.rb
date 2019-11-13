class Alimentos
	attr_reader :nombre, :gases, :terreno, :prot, :carbo, :lip
	attr_writer :gases, :terreno, :prot, :carbo, :lip
	def initialize (nombre)
		@nombre = nombre
	end
	def to_s
		"(#{nombre},#{prot},#{carbo},#{lip},#{gases},#{terreno})"
	end
end
