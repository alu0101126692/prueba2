require 'foodie'

RSpec.describe Foodie do
  before(:all) do
    @vaquita = Alimentos.new("Carne de vaca")
  end
  it "Existe un nombre para el alimento" do
    @vaquita = Alimentos.new("Carne de vaca")
  end
end
