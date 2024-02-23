Quando('eu acessar a página principal') do
  home.open
end

Então('eu quero ver o catálogo de cafés disponíveis') do
  expect(home.coffee_list.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
  home.open
end

Dado('desejo comprar o seguinte produto:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @product = table.rows_hash
end

Quando('eu inicio a compra deste item') do
  home.buy(@product[:name])
end

E('devo ver a página de Checkout com os detalhes do produto') do
  checkout.assert_produtct_details(@product)
end

E('o valor total da compra deve ser de R$ {string}') do |product_price|
  checkout.assert_total_price(product_price)
end

Então('devo ver um popup informado que o produto está indisponível') do
  dialog.assert_have_text('Produto indisponível')
end

