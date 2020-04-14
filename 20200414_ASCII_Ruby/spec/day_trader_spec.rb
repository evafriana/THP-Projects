require_relative '../lib/day_trader'

describe 'day_trader method' do
  it " à partir d'un array de prix, doit renvoyer le meilleur jour d'achat et le meilleur jour de revente pour faire le maximum de bénéfices." do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end

