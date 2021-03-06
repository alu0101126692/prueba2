require 'foodie'

RSpec.describe Foodie do
  before(:all) do
    @vaquita = Alimentos.new("Carne de vaca",21.0,0.0,3.1,50.0,164.0)
  end
  
  it "Existe un metodo para obtener el nombre del Alimento" do
  expect(@vaquita.nombre).to eq("Carne de vaca")
end
it "Se ha podido introducir la cantidad de gases" do
    @vaquita.gases = 50.0
  end
  it "Se puede obtener la cantidad de gases" do
  expect(@vaquita.gases).to eq(50.0)
end
it "Se ha podido introducir la cantidad de terreno usado" do
    @vaquita.terreno = 164.0
  end
  it "Se puede obtener la cantidad de terreno usado" do
      expect(@vaquita.terreno).to eq(164.0)
    end


end
RSpec.describe Listas do 
	before(:all) do
                @lista = Listas.new()
		@lista2 = Listas.new()
		@lista3 = Listas.new()
		@lista4 = Listas.new()
		@vaquita = Alimentos.new("Carne de vaca",21.0,0,3.1,50.0,164.0)
		@huevos = Alimentos.new("Huevos",13.0,1.1,11,4.2,5.7)
		@cordero = Alimentos.new("Cordero",18.0,0.0,17.0,20.0,185.0)
		@camarones = Alimentos.new("Camarones",17.6,1.5,0.6,18.0,2.0)
		@leche = Alimentos.new("Leche",3.3,4.8,3.2,3.2,8.9)
		@chocolate = Alimentos.new("Chocolate",5.3,47.0,30.0,2.3,3.4)
		@lentejas = Alimentos.new("Lentejas",23.5,52.0,1.4,0.4,3.4)
		@cerdo = Alimentos.new("Cerdo",21.5,0.0,6.3,7.6,11.0)
		@queso = Alimentos.new("Queso",25.0,1.3,33.0,11.0,41.0)
		@cafe = Alimentos.new("Cafe",0.1,0.0,0.0,0.4,0.3)
		@nuez = Alimentos.new("Nuez",20.0,21.0,54.0,0.3,7.9)
		@esp = Listas.new()
                @esp.insert_head_var(@chocolate,@chocolate)
                @esp.insert_head_var(@lentejas,@lentejas)
                @esp.insert_head_var(@leche,@leche)
                @esp.insert_head_var(@cerdo,@cerdo)
                @esp.insert_head_var(@chocolate,@chocolate)
                @esp.insert_head_var(@lentejas,@lentejas)
                @esp.insert_head_var(@leche,@leche)
                @esp.insert_head_var(@cerdo,@cerdo)
                @esp.insert_head_var(@queso,@queso)
                
                @vas = Listas.new()
                @vas.insert_head_var(@chocolate,@chocolate)
                @vas.insert_head_var(@chocolate,@chocolate)
                @vas.insert_head_var(@lentejas,@lentejas)
                @vas.insert_head_var(@cordero,@cerdo)
                
                @veg = Listas.new()
                @veg.insert_head_var(@chocolate,@chocolate)
                @veg.insert_head_var(@lentejas,@lentejas)
                @veg.insert_head_var(@leche,@leche)
                @veg.insert_head_var(@cafe,@nuez)
                @veg.insert_head_var(@queso,@queso)
                
                @veg2 = Listas.new()
		@veg2.insert_head_var(@chocolate,@chocolate)
                @veg2.insert_head_var(@chocolate,@chocolate)
                @veg2.insert_head_var(@lentejas,@lentejas)
                @veg2.insert_head_var(@cafe,@nuez)
                
                @carne = Listas.new()
                @carne.insert_head_var(@cerdo,@cordero)
                @carne.insert_head_var(@vaquita,@cerdo)
                @carne.insert_head_var(@lentejas,@lentejas)
                @carne.insert_head_var(@cafe,@nuez)
                

        end
        it "Existe nodo de la lista con sus datos, su siguiente y su previo" do
               
        end
	it "Debe existir una Lista con su cabeza y su cola" do
		expect(@lista.head).to eq(nil)
		expect(@lista.tail).to eq(nil)
	end
	it "Se puede insertar un elemento en la lista" do
		@lista2.insert_head(@vaquita)
		expect(@lista2.head.value).to eq(@vaquita)
		@lista2.insert_tail(@camarones)
		expect(@lista2.tail.value).to eq(@camarones)
		@lista2.insert_tail(@vaquita)
                expect(@lista2.tail.value).to eq(@vaquita)
		@lista2.insert_head(@camarones)
                expect(@lista2.head.value).to eq(@camarones)			 
	end	
	it "Se pueden insertar varios elementos" do
		
		@lista3.insert_head_var(@vaquita,@camarones)
		expect(@lista3.head.value).to eq(@camarones)
		expect(@lista3.head.prev.value).to eq(@vaquita)
		@lista4.insert_tail_var(@cordero,@huevos)
		expect(@lista4.tail.value).to eq(@huevos)
                expect(@lista4.tail.next.value).to eq(@cordero)

	end
	it "Se extrae el ultimo elemento de la Lista" do
		@lista5 = Listas.new()
		@lista5.insert_head_var(@vaquita,@camarones)
		expect(@lista5.head.value).to eq(@camarones)
		@lista5.pop_head()
		expect(@lista5.head.value).to eq(@vaquita)
	end 
	it "Se extrae el primer elemento de la lista" do
		@lista6 = Listas.new()
                @lista6.insert_tail_var(@vaquita,@camarones)
                expect(@lista6.tail.value).to eq(@camarones)
                @lista6.pop_tail()
                expect(@lista6.tail.value).to eq(@vaquita)

	end
	it "Crear expectativas para estimar emisiones de gases diarias de cada lista" do
		expect(@esp.gei.round).to eq(76)
		expect(@vas.gei.round).to eq(38) 
		expect(@veg.gei.round).to eq(34)
		expect(@veg2.gei.round).to eq(11)
		expect(@carne.gei.round).to eq(87)
	end
	it "Crear expectativas para estimar emisiones de gases anuales de cada dieta" do
		expect(@esp.gei.round*365).to eq(27740)
                expect(@vas.gei.round*365).to eq(13870)
                expect(@veg.gei.round*365).to eq(12410)
                expect(@veg2.gei.round*365).to eq(4015)
                expect(@carne.gei.round*365).to eq(31755)
	end
	it "Crear expectativas para estimar uso de terreno anual de cada dieta" do
                expect(@esp.terr.round).to eq(189)
                expect(@vas.terr.round).to eq(216) 
                expect(@veg.terr.round).to eq(122)
                expect(@veg2.terr.round).to eq(29)
                expect(@carne.terr.round).to eq(386)
        end

end
