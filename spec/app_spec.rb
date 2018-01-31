require 'app.rb'

describe DataManager do

  it 'returns the email users total spend' do
    expect(subject.total_spend('terry_henry@doyle.io')).to eq(22.98)
  end

  it 'returns the email users average spend' do
    expect(subject.average_spend('terry_henry@doyle.io')).to eq(11.49)
  end

  it 'identifies the user with most purchases' do
    expect(subject.most_loyal).to eq('terry_henry@doyle.io')
  end

end
