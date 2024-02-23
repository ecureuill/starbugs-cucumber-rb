#language: pt

Funcionalidade: Catálogo de cafés
  Como um usuário do site, eu quero ver o catálogo de cafés na página principal
  Para que eu possa escolher e saber mais sobre os produtos disponíveis

Cenário: Acessar o catálogo de cafés da Star bugs
  Quando eu acessar a página principal
  Então eu quero ver o catálogo de cafés disponíveis

Cenário: Iniciar a compra de café
  Dado que estou na página principal da Starbugs
  E desejo comprar o seguinte produto:
      | name     | Expresso Gelado |
      | price    | 9,99            |
      | delivery | 10,00           |
  Quando eu inicio a compra deste item
  Então devo ver a página de Checkout com os detalhes do produto
  E o valor total da compra deve ser de R$ '19,99'

Cenário: Café indisponível
  Dado que estou na página principal da Starbugs
  E desejo comprar o seguinte produto:
      | name     | Expresso Cremoso |
  Quando eu inicio a compra deste item
  Então devo ver um popup informado que o produto está indisponível
