#language: pt

Funcionalidade: Pedidos
  Como um usuário do site Starbugs, eu quero selecionar e comprar cafés
  Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

Cenário: Compra bem sucedida
  Dado que estou na página principal da Starbugs
  E que iniciei a compra do produto 'Expresso Tradicional'
  Quando faço a busca do seguinte CEP: "01303001"
  E informo os demais dados do endereço:
    | number      | 100    |
    | complement  | Apt 22 |
  E escolho a forma de pagamento 'Cartão de Débito'
  E por fim finalizao a compra
  Então sou redirecionado para a página de confirmação de pedidos
  E deve ser informado um prazo de entrega entre 20 a 30 minutos