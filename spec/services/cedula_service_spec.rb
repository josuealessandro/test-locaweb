require 'rails_helper'

RSpec.describe CedulaService, type: :service do
  describe '.aumentar_quantidade' do
    it 'aumenta a quantidade corretamente' do
      valor = 10
      quantidade_inicial = 5
      quantidade_a_aumentar = 3

      CedulaService.aumentar_quantidade(valor, quantidade_inicial)
      CedulaService.aumentar_quantidade(valor, quantidade_a_aumentar)

      quantidade = Cedula.ultima_quantidade_por_valor(valor)

      expect(quantidade).to eq(quantidade_inicial + quantidade_a_aumentar)
    end
  end

  describe '.diminuir_quantidade' do
    it 'diminui a quantidade corretamente' do
      valor = 10
      quantidade_inicial = 10
      quantidade_a_diminuir = 2

      CedulaService.aumentar_quantidade(valor, quantidade_inicial)
      CedulaService.diminuir_quantidade(valor, quantidade_a_diminuir)

      quantidade = Cedula.ultima_quantidade_por_valor(valor)

      expect(quantidade).to eq(quantidade_inicial - quantidade_a_diminuir)
    end
  end
end
