class Alimentos
	include Comparable
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
	def hombre(prot1,prot2,prot3,terr1,terr2,terr3,gas1,gas2,gas3)
		if (prot1 + prot2 + prot3) >= 54
	    prot_max = prot1 + prot2 + prot3
			gases = terr1 + terr2 + terr3
			terreno = gas1+ gas2+ gas3

		end
		"(#{prot_max},#{gases},#{terreno})"
	end

end
