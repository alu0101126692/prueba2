class Alimentos
	attr_reader :nombre, :gases, :terreno, :prot, :carbo, :lip
	attr_writer :gases, :terreno, :prot, :carbo, :lip
	def initialize (nombre)
		@nombre = nombre
	end
	def to_s
		"(#{nombre},#{prot},#{carbo},#{lip},#{gases},#{terreno})"
	end
	def val_en
	kcalc = carbo * 4
	kcalp = prot * 4
	kcall = lip * 9
	(kcalc + kcalp + kcall).round(1)
end

end
