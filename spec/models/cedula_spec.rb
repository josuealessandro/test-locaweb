require 'rails_helper'

RSpec.describe Cedula, type: :model do
  describe '.ultima_quantidade_por_valor' do
    context 'quando há registros com o mesmo valor' do
      it 'retorna a última quantidade para o valor especificado' do
        valor = 10

        # Crie alguns registros de Cedula com o mesmo valor
        Cedula.create(valor: valor, quantidade: 5)
        Cedula.create(valor: valor, quantidade: 8)
        Cedula.create(valor: valor, quantidade: 12)

        # Chame o método e verifique se ele retorna a última quantidade
        ultima_quantidade = Cedula.ultima_quantidade_por_valor(valor)

        expect(ultima_quantidade).to eq(12)
      end
    end

    context 'quando não há registros com o mesmo valor' do
      it 'retorna 0' do
        valor = 10

        Cedula.where(valor: valor).destroy_all

        ultima_quantidade = Cedula.ultima_quantidade_por_valor(valor)

        expect(ultima_quantidade).to eq(0)
      end
    end
  end
end
