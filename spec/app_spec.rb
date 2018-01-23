require 'app.rb'

describe DataManager do

  it 'returns the email users total spend' do
    expect(subject.total_spend('drift.rock@email.com')).to eq(22.98)
  end

  it 'returns the email users average spend' do
    expect(subject.average_spend('drift.rock@email.com')).to eq(11.49)
  end

  it 'identifies the user with most purchases' do
    expect(subject.most_loyal).to eq('drift.rock@email.com')
  end

end
