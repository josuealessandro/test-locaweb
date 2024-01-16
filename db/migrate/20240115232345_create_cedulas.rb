class CreateCedulas < ActiveRecord::Migration[7.1]
  def change
    create_table :cedulas do |t|
      t.integer :valor
      t.integer :quantidade
      t.timestamps
    end
  end
end
