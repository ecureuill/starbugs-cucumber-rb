class HomePage
  include Capybara::DSL
  def open
    visit EnvVariables.BASE_URL
  end

  def coffee_list
    return all('.coffee-item')
  end

  def buy(coffee_name)
    product = find('.coffee-item', text: coffee_name)
    product.find('.buy-coffee').click
  end
end