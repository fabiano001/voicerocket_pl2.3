json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :amount, :user_id
  json.url invoice_url(invoice, format: :json)
end
