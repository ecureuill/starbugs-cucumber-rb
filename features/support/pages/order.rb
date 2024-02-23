require 'rspec'

class OrderPage
  include Capybara::DSL
  include RSpec::Matchers

  def assert_oder_success
    expect(find('h1').text).to eql 'Uhull! Pedido confirmado'
    expect(find('p[color=subtitle]').text).to eql 'Agora é só aguardar que logo o café chegará até você'
  end

  def assert_oder_delivery(time1, time2)
    expect(find('p', text: 'Previsão de entrega').text).to eql "Previsão de entrega\n#{time1} min - #{time2} min"
  end
end
