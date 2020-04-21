require_relative '../lib/dark_trader'

describe 'dark_trader method' do
  it '1 - doit récupèrer le cours de toutes les cryptomonnaies et les enregistrer dans un array' do
    expect(result_a.class).to eq(Array)
  end
    it '2 - doit récupèrer le cours de toutes les cryptomonnaies et les enregistrer dans un array de hashs' do
    expect(result_a.last.class).to eq(Hash)
  end
    it '3 - BTC doit être dans les résultats' do
    expect(result_a.find { |x| x[:BTC] }).not_to be_nil
  end
end
