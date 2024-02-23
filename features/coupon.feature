#language: pt

Funcionalidade: Cupom
  Como um usuário do site de Starbugs,
  Eu quero poder aplicar cupons de desconto na página de checkout
  Para que eu possa obter reduções no preço de produtos específicos ou na minha compra total, aumentando a satisfação com a minha experiência de compra.

Contexto:
  Dado que iniciei a compra do item:
      | name        | Café com Leite |
      | price       | 19,99          |
      | delivery    | 10,00          |
      | total_price | 29,99          |

Cenário: Aplicar desconto de 20%

  Quando aplico o cupom 'MEUCAFE'
  Então o valor do desconto deve ser R$ '3,99'
  E o valor final da compra deve ser atualizado para R$ '25,99'

Cenário: Tentativa de aplicar o cupom
  Quando aplico o cupom '<coupon>'
  Então devo ver a notificação '<notification>'
  E o valor final da compra deve ser mantido o mesmo

  Exemplos:
  | coupon    | notification   |
  | PROMO20   | Cupom expirado |
  | PROMO100  | Cupom inválido |
