require_relative '../lib/mairie_christmas'

describe 'mairie_christmas method' do
  it "1 - le résultat doit être dans un array" do
    expect(result_b.class).to eq(Array)
  end
  it "2 - le résultat doit être dans un array de hashs" do
    expect(result_b.last.class).to eq(Hash)
  end
  it "3 - doit récupèrer les adresses e-mails (des mairies du Val d'Oise)" do
    expect(result_b.first.values.to_s.match?(/.+@.+/)).to eq(true)
  end
  it "4 - doit contenir l'email de la ville d'Us" do
    expect(result_b.find { |x| x['Us'] }).to eq({"Us"=>"mairie.us.95@wanadoo.fr"})
  end
end
