class Plato
	attr_reader :nombre, :lista, :listagr

	def initialize (nombre,lista,listagr) 
		@nombre = nombre
		@lista = lista
		@listagr = listagr
	end
	def recorr
		grtotal = 0
		sum = 0
		@lista.zip(@listagr).each do |normal, gr|
			grtotal += gr
			cant = gr/100.0
			sum += normal.prot*cant 
		end
		(sum*100)/grtotal
	end
	def lip
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        grtotal += gr
                        cant = gr/100.0
                        sum += normal.lip*cant
                end
                (sum*100)/grtotal
        end
end
