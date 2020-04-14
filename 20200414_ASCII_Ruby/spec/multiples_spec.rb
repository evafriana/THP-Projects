require_relative '../lib/multiples'

describe 'the multiple_of_3_or_5? method' do
  it 'should return TRUE when an integer is a multiple of 3 or 5' do
    expect(multiple_of_3_or_5?(3)).to eq(true)
    expect(multiple_of_3_or_5?(5)).to eq(true)
    expect(multiple_of_3_or_5?(51)).to eq(true)
    expect(multiple_of_3_or_5?(45)).to eq(true)
  end

  it 'should return FALSE when an integer is NOT a multiple of 3 or 5' do
    # je te laisse ecrire ces tests-la
    expect(multiple_of_3_or_5?(2)).to eq(false)
    expect(multiple_of_3_or_5?(-1)).to eq(false)
  end
end

# puts sum_of_3_or_5_multiples(10)
# puts sum_of_3_or_5_multiples(11)
# puts sum_of_3_or_5_multiples(0)
# puts sum_of_3_or_5_multiples(3)
# puts sum_of_3_or_5_multiples(-1)
# puts sum_of_3_or_5_multiples(1.23)
# puts sum_of_3_or_5_multiples('chiffre')
