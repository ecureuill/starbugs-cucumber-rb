Dado('que iniciei a compra do item:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @product = table.rows_hash
  home.open
  home.buy(@product[:name])
end

Quando('aplico o cupom {string}') do |coupon_code|
  checkout.apply_coupon(coupon_code)
end

Então('o valor do desconto deve ser R$ {string}') do |discount_value|
  checkout.assert_discount_value(discount_value)
end

Então('o valor final da compra deve ser atualizado para R$ {string}') do |final_price|
  checkout.assert_total_price(final_price)
end

Então('devo ver a notificação {string}') do |text|
  checkout.assert_notification(text)
end

Então('o valor final da compra deve ser mantido o mesmo') do
  checkout.assert_total_price(@product[:total_price])
end