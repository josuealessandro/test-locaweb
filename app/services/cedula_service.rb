class CedulaService
  def self.aumentar_quantidade(valor, quantidade)
    ultima_quantidade = Cedula.ultima_quantidade_por_valor(valor)
    nova_quantidade = ultima_quantidade + quantidade
    Cedula.create(valor: valor, quantidade: nova_quantidade)
  end

  def self.diminuir_quantidade(valor, quantidade)
    ultima_quantidade = Cedula.ultima_quantidade_por_valor(valor)
    nova_quantidade = ultima_quantidade - quantidade
    Cedula.create(valor: valor, quantidade: nova_quantidade)
  end
end