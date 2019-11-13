require 'foodie'

RSpec.describe Foodie do
  before(:all) do
    @vaquita = Alimentos.new("Carne de vaca")
  end
  it "Existe un nombre para el alimento" do
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
end
