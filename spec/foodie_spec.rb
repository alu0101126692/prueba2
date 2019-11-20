require 'foodie'

RSpec.describe Foodie do
  before(:all) do
    @vaquita = Alimentos.new("Carne de vaca")
  end
  it "Existe un nombre para el alimento " do
    @vaquita = Alimentos.new("Carne de vaca")
    @huevos = Alimentos.new("Huevos")
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
  it "Existe un metodo para obtener el alimento formateado" do
  @vaquita.prot = 21.1
  @vaquita.carbo = 0.0
  @vaquita.lip = 3.1
  expect(@vaquita.to_s).to eq("(Carne de vaca,21.1,0.0,3.1,50.0,164.0)")
end
it "Existe un metodo para obtener el valor energetico de un alimento" do
    expect(@vaquita.val_en).to eq(112.3)
end
it "Impacto ambiental diario de un hombre" do
  @cordero = Alimentos.new("Cordero")
  @cordero.prot = 18.0
  @cordero.gases = 20.0
  @cordero.terreno = 185.0
  @camarones = Alimentos.new("Camarones")
  @camarones.prot = 17.6
  @camarones.gases = 18.0
  @camarones.terreno = 2.0
  @cantidad = Alimentos.new("Vaca,Cordero,Camarones")
  expect(@cantidad.hombre(@vaquita.prot,@cordero.prot,@camarones.prot,@vaquita.gases,@cordero.gases,@camarones.gases,@vaquita.terreno,@cordero.terreno,@camarones.terreno)).to eq("(56.7,88.0,351.0)")

end
  it "Impacto ambiental diario de una mujer" do
    @cordero = Alimentos.new("Cordero")
    @cordero.prot = 18.0
    @cordero.gases = 20.0
    @cordero.terreno = 185.0
    @camarones = Alimentos.new("Camarones")
    @camarones.prot = 17.6
    @camarones.gases = 18.0
    @camarones.terreno = 2.0
    @cantidad = Alimentos.new("Vaca,Cordero,Camarones")
    expect(@cantidad.mujer(@vaquita.prot,@cordero.prot,@camarones.prot,@vaquita.gases,@cordero.gases,@camarones.gases,@vaquita.terreno,@cordero.terreno,@camarones.terreno)).to eq("(56.7,88.0,351.0)")
  end
end
RSpec.describe Listas do 
	before(:all) do
                @lista = Listas.new()
		@lista2 = Listas.new()
		
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
		@lista3 = Listas.new()
		@lista4 = Listas.new()
		@lista3.insert_head_var(@vaquita,@camarones)
		expect(@lista3.head.value).to eq(@camarones)
		expect(@lista3.head.prev.value).to eq(@vaquita)
		@lista4.insert_tail_var(@cordero,@huevos)
		expect(@lista4.tail.value).to eq(@huevos)
                expect(@lista4.tail.next.value).to eq(@cordero)

	end
	it "Se extrae el primer elemento de la Lista" do
		@lista3.pop()
		expect(@lista3.head.value).to eq(@vaquita)
	end
end
