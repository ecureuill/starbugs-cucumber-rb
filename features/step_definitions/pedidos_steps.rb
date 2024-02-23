Dado('que iniciei a compra do produto {string}') do |product_name|
  home.buy(product_name)
end

Quando('faço a busca do seguinte CEP: {string}') do |zipcode|
  checkout.search_zipcode(zipcode)
end

Quando('informo os demais dados do endereço:') do |table|
  checkout.fill_address(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |payment_type|
    checkout.check_payment_type(payment_type)  
end

Quando('por fim finalizao a compra') do
  find('button[type=submit]').click
end