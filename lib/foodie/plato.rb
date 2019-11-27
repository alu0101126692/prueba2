class Plato
	attr_reader :nombre, :lista, :listagr

	def initialize (nombre,lista,listagr) 
		@nombre = nombre
		@lista = lista
		@listagr = listagr
	end
	def prot
		grtotal = 0
		sum = 0
		@lista.zip(@listagr).each do |normal, gr|
			grtotal += gr
			cant = gr/1000.0
			sum += normal.prot*cant 
		end
		(sum*100)/grtotal
	end
	def lip
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        grtotal += gr
                        cant = gr/1000.0
                        sum += normal.lip*cant
                end
                (sum*100)/grtotal
        end
	def carbo   
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        grtotal += gr
                        cant = gr/1000.0
                        sum += normal.carbo*cant
                end
                (sum*100)/grtotal
        end
	def vct
                grtotal = 0
                sum = 0
                @lista.zip(@listagr).each do |normal, gr|
                        cant = gr/1000.0
                        sum += normal.val_en*cant
                end
                sum
        end


end
