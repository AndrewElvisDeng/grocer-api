json.products @products do |product|
    json.name product.name
    json.price number_to_currency product.price
end