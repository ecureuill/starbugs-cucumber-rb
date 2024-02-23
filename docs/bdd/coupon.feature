#language: pt
Funcionalidade: Cupom
  Como um usuário do site de Starbugs, 
  Eu quero poder aplicar cupons de desconto na página de checkout
  Para que eu possa obter reduções no preço de produtos específicos ou na minha compra total, aumentando a satisfação com a minha experiência de compra.

Cenário: Aplicar desconto de 20%

  Dado que eu estou na página de checkout
  E que o produto possui valor de R$ 19,99
  E que a taxa de entrega é de R$ 10,00
  E que o valor total do pedido é R$ 29,99
  Quando aplico o cupom de 20% desconto
  Então o desconto de 20% deve ser aplicado apenas no valor do item
  E o valor final da compra deve ser atualizado para R$ 25,99

Cenário: Cupom expirado

  Dado que estou na página de checkout
  E que o produto possui valor de R$ 19,99
  E que a taxa de entrega é de R$ 10,00
  E que o valor total do pedido é R$ 29,99
  Quando aplico o cupom de desconto expirado
  Então devo ver a notificação "Cupom expirado"
  E o valor final da compra deve ser mantido o mesmo

Cenário: Cupom inválido

Dado que estou na página de checkout
E que o produto possui valor de R$ 19,99
E que a taxa de entrega é de R$ 10,00
E que o valor total do pedido é R$ 29,99
Quando aplico o cupom de desconto inválido
Então devo ver a notificação "Cupom inválido"
E o valor final da compra deve ser mantido o mesmo
