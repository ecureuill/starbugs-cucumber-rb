Então('sou redirecionado para a página de confirmação de pedidos') do
  order.assert_oder_success
end

Então('deve ser informado um prazo de entrega entre {int} a {int} minutos') do |time1, time2|
  order.assert_oder_delivery(time1, time2)
end