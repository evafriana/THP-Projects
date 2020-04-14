require_relative '../lib/caesar_cipher'

describe 'caesar_cipher method' do
  it 'should change the letter' do
    expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
  end
end
