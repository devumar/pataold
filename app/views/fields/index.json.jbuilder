json.array!(@fields) do |field|
  json.extract! field, :tenant_id, :propery_id, :plot_no, :unit_no, :amount, :receipt, :mode
 
json.url field_url(field, format: :json)
end    
