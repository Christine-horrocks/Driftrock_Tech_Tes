require 'app.rb'

describe DataManager do

  it 'returns the email users total spend' do
    expect(subject.total_spend('terry_henry@doyle.io')).to eq(75.21)
  end

  it 'returns the email users average spend' do
    expect(subject.average_spend('terry_henry@doyle.io')).to eq(37.61)
  end

  it 'identifies the user with most purchases' do
    expect(subject.most_loyal).to eq('bogisich_judah@hilperttromp.biz')
  end

end

# [
#   { "id": "12DF-2324-GA2D-31RT", "first_name": "Drift", "last_name": "Rock",
#   "phone": "0-200-100-1234", "email": "drift.rock@email.com" },
#   { "id": "33DF-2324-GA2D-31RT", "first_name": "Glide", "last_name": "Rock",
#   "phone": "0-333-100-1234", "email": "glide.rock@email.com" },
#   ]

# [
#   { "user_id" => "S27G-8UMJ-LDSL-UOPN", "item" => "Huge pineapple pizza", "spend" => "19.99"},
#   { "user_id" => "12DF-2324-GA2D-31RT", "item" => "Huge pineapple pizza", "spend" => "19.99"},
#   {"user_id" => "12DF-2324-GA2D-31RT", "item" => "A nice cup of tea", "spend" => "2.99"},
#   {"user_id" => "33DF-2324-GA2D-31RT", "item" => "A nice cup of tea", "spend" => "2.99"}
#   ]
