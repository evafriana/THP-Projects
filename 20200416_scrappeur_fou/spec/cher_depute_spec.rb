require_relative '../lib/cher_depute'

describe 'cher_depute method' do
  it "1 - le résultat doit être dans un array" do
    expect(result_c.class).to eq(Array)
  end
  it "2 - le résultat doit être dans un array de hashs" do
    expect(result_c.last.class).to eq(Hash)
  end
  it "3 - doit récupèrer les adresses e-mails des députés" do
    expect(result_c.first.values.to_s.match?(/.+@.+/)).to eq(true)
  end
  it "4 - doit contenir les informations de M'jid El Guerrab" do
    expect(result_c.find { |x| x["first_name"] == "M'jid" }).to eq({"email"=>"mjid.elguerrab@assemblee-nationale.fr", "first_name"=>"M'jid", "last_name"=>"El Guerrab"})
  end
end
