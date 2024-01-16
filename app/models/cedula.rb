class Cedula < ApplicationRecord

  def self.ultima_quantidade_por_valor(valor)
    cedula = where(valor: valor).order(created_at: :desc).first
    cedula&.quantidade || 0
  end

end
