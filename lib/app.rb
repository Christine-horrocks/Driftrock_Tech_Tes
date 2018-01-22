
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

  def total_spend(em)
    user = @user_data.select { |user| user[:email] == em }
    user_id = user[0].fetch(:id)
    items = @purchase_data.select { |purchase| purchase[:user_id] == user_id}
    total = items.map { |item| item.fetch(:spend).to_f }
    total.sum.round(2)
  end

end
