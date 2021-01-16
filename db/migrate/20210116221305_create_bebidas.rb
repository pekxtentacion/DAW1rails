class CreateBebidas < ActiveRecord::Migration[6.1]
  def change
    create_table :bebidas do |t|
      t.string :nombre
      t.string :precio
      t.string :source

      t.timestamps
    end
  end
end
