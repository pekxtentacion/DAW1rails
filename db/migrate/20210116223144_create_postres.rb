class CreatePostres < ActiveRecord::Migration[6.1]
  def change
    create_table :postres do |t|
      t.string :nombre
      t.string :precio
      t.string :source

      t.timestamps
    end
  end
end
