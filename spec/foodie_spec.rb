require 'foodie'

RSpec.describe Foodie do
  before(:all) do
    @vaquita = Alimentos.new("Carne de vaca")
  end
  it "Existe un nombre para el alimento " do
    @vaquita = Alimentos.new("Carne de vaca")
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
		Node = Struct.new(:value, :next, :prev)
		
        end
        it "Existe nodo de la lista con sus datos, su siguiente y su previo" do
                @node = Node.new(@vaquita,nil,nil)
		expect(@node.value).to eq(@vaquita)
		expect(@node.next).to eq(nil)
		expect(@node.prev).to eq(nil)
        end
	it "Debe existir una Lista con su cabeza y su cola" do
		expect(@lista.head).to eq(nil)
		expect(@lista.tail).to eq(nil)
	end	


end
