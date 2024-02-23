require 'rspec'

class CheckoutPage
  include Capybara::DSL
  include RSpec::Matchers

  def assert_produtct_details(product)
    product_title = find('.item-details h1')
    expect(product_title).to have_content(product[:name])
    subtotal = find('.subtotal .sub-price')
    delivery = find('.delivery .delivery-price')
    expect(subtotal).to have_content('R$ ' + product[:price])
    expect(delivery).to have_content('R$ ' + product[:delivery])
  end

  def assert_total_price(total_price)
    price = find('.total-price')
    expect(price).to have_content("R$ #{total_price}")
  end

  def search_zipcode(zipcode)
    find('input[name=cep]').set(zipcode)
    click_on  'Buscar CEP'
  end

  def fill_address(address)
    find('input[name=number]').set(address[:number])
    find('input[name=complement]').set(address[:complement])
  end

  def check_payment_type(payment_type)
    case payment_type
      when 'Cartão de Crédito'
        find('label[for=credit]').click
      when 'Cartão de Débito'
        find('label[for=debit]').click
      when 'À vista no PIX'
        find('label[for=pix]').click
      end
  end

  def apply_coupon(coupon_code)
    find('input[placeholder="Código do cupom"]').set(coupon_code)
    click_on 'Aplicar'
  end

  def assert_discount_value(discount_value)
    discount = find('.discount .delivery-price')
    expect(discount).to have_content("R$ #{discount_value}")
  end

  def assert_notification(text)
    notice = find('.notice')
    expect(notice).to have_content(text)
  end
end