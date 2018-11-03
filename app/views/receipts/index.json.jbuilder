json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :month, :unit_name, :property_id,:receipt_no,:mode, :created_at, :updated_at
  json.url receipt_url(receipt, format: :json)
end
