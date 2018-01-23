
class DataManager
  attr_reader :user_data

  def initialize
    @user_data = [
      { "id": "12DF-2324-GA2D-31RT", "first_name": "Drift", "last_name": "Rock",
      "phone": "0-200-100-1234", "email": "drift.rock@email.com" },
      { "id": "33DF-2324-GA2D-31RT", "first_name": "Glide", "last_name": "Rock",
      "phone": "0-333-100-1234", "email": "glide.rock@email.com" },
      ]

    @purchase_data = [
      { "user_id": "12DF-2324-GA2D-31RT", "item": "Huge pineapple pizza", "spend": "19.99"},
      {"user_id": "12DF-2324-GA2D-31RT", "item": "A nice cup of tea", "spend": "2.99"},
      {"user_id": "33DF-2324-GA2D-31RT", "item": "A nice cup of tea", "spend": "2.99"}
      ]
  end

  def total_spend(email)
    user = @user_data.select { |user| user[:email] == email }
    user_id = user[0].fetch(:id)
    items = @purchase_data.select { |purchase| purchase[:user_id] == user_id}
    spends = items.map { |item| item.fetch(:spend).to_f }
    spends.sum.round(2)
  end

  def average_spend(email)
    user = @user_data.select { |user| user[:email] == email }
    user_id = user[0].fetch(:id)
    items = @purchase_data.select { |purchase| purchase[:user_id] == user_id}
    spends = items.map { |item| item.fetch(:spend).to_f }
    total = spends.sum.round(2)
    average = total / spends.count
    average.round(2)
  end

  def most_loyal
    user_ids = @purchase_data.map { |purchase| purchase.fetch(:user_id) }
    freq = user_ids.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    most_loyal_id = user_ids.max_by { |v| freq[v] }
    user = @user_data.select { |user| user[:id] == most_loyal_id }
    user_id = user[0].fetch(:email)
  end

end
